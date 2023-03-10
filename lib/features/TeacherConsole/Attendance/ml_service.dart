import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'package:team_dart_knights_sih/models/ModelProvider.dart';
import 'package:tflite_flutter/tflite_flutter.dart';
import 'package:image/image.dart' as imglib;

import 'image_converter.dart';

class MLService {
  Interpreter? _interpreter;
  double threshold = 0.9;
  List<Student> students;
  List<double> _predictedData = [];
  List get predictedData => _predictedData;
  MLService({required this.students});
  Future initialize() async {
    students.removeWhere(
        (element) => element.modelData == null || element.modelData!.isEmpty);
    late Delegate delegate;
    try {
      if (Platform.isAndroid) {
        delegate = GpuDelegateV2(
          options: GpuDelegateOptionsV2(
            isPrecisionLossAllowed: false,
            inferencePreference: TfLiteGpuInferenceUsage.fastSingleAnswer,
            inferencePriority1: TfLiteGpuInferencePriority.minLatency,
            inferencePriority2: TfLiteGpuInferencePriority.auto,
            inferencePriority3: TfLiteGpuInferencePriority.auto,
          ),
        );
      } else if (Platform.isIOS) {
        delegate = GpuDelegate(
          options: GpuDelegateOptions(
              allowPrecisionLoss: true,
              waitType: TFLGpuDelegateWaitType.active),
        );
      }
      var interpreterOptions = InterpreterOptions()..addDelegate(delegate);

      _interpreter = await Interpreter.fromAsset('mobilefacenet.tflite',
          options: interpreterOptions);
    } catch (e) {
      print('Failed to load model.');
      print(e);
    }
  }

  void setCurrentPrediction(imglib.Image image, Rect? face) {
    if (face == null) {
      return;
    }
    if (_interpreter == null) throw Exception('Interpreter is null');
    if (face == null) throw Exception('Face is null');
    List input = _preProcess(image, face);

    input = input.reshape([1, 112, 112, 3]);
    List output = List.generate(1, (index) => List.filled(192, 0));

    _interpreter?.run(input, output);
    output = output.reshape([192]);

    _predictedData = List.from(output);
  }

  Future<Student?> predict() async {
    return _searchResult(_predictedData);
  }

  List _preProcess(imglib.Image image, Rect faceDetected) {
    imglib.Image croppedImage = _cropFace(image, faceDetected);
    imglib.Image img = imglib.copyResizeCropSquare(croppedImage, 112);

    Float32List imageAsList = imageToByteListFloat32(img);
    return imageAsList;
  }

  imglib.Image _cropFace(imglib.Image image, Rect faceDetected) {
    // imglib.Image convertedImage = _convertCameraImage(image);
    double x = faceDetected.left - 10.0;
    double y = faceDetected.top - 10.0;
    double w = faceDetected.width + 10.0;
    double h = faceDetected.height + 10.0;
    return imglib.copyCrop(image, x.round(), y.round(), w.round(), h.round());
  }

  imglib.Image _convertCameraImage(CameraImage image) {
    var img = convertToImage(image);
    var img1 = imglib.copyRotate(img, -90);
    return img1;
  }

  Float32List imageToByteListFloat32(imglib.Image image) {
    var convertedBytes = Float32List(1 * 112 * 112 * 3);
    var buffer = Float32List.view(convertedBytes.buffer);
    int pixelIndex = 0;

    for (var i = 0; i < 112; i++) {
      for (var j = 0; j < 112; j++) {
        var pixel = image.getPixel(j, i);
        buffer[pixelIndex++] = (imglib.getRed(pixel) - 128) / 128;
        buffer[pixelIndex++] = (imglib.getGreen(pixel) - 128) / 128;
        buffer[pixelIndex++] = (imglib.getBlue(pixel) - 128) / 128;
      }
    }
    return convertedBytes.buffer.asFloat32List();
  }

  Future<Student?> _searchResult(List predictedData) async {
    double minDist = 999;
    double currDist = 0.0;
    Student? predictedResult;
    print(students.length);
    for (Student u in students) {
      print(predictedData);
      currDist = _euclideanDistance(u.modelData, predictedData);
      print("curre dist is : $currDist");
      if (currDist <= threshold && currDist < minDist) {
        minDist = currDist;
        predictedResult = u;
      }
    }
    return predictedResult;
  }

  bool compareFaces(
    List<double> initialData,
  ) {
    double minDist = 999;
    double currDist = 0.0;
    currDist = _euclideanDistance(initialData, predictedData);
    if (currDist <= threshold && currDist < minDist) {
      return true;
    } else {
      return false;
    }
  }

  double _euclideanDistance(List? e1, List? e2) {
    if (e1 == null || e2 == null) throw Exception("Null argument");

    double sum = 0.0;
    for (int i = 0; i < e1.length; i++) {
      sum += pow((e1[i] - e2[i]), 2);
    }
    return sqrt(sum);
  }

  void setPredictedData(value) {
    _predictedData = value;
  }

  dispose() {}
}
