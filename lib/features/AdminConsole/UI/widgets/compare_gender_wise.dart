import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../core/constants.dart';
import '../../../../models/ClassRoom.dart';

class CompareGenderWise extends StatefulWidget {
  List<ClassRoom> selectedList;
  CompareGenderWise({Key? key, required this.selectedList}) : super(key: key);

  @override
  State<CompareGenderWise> createState() => _CompareGenderWiseState();
}

class _CompareGenderWiseState extends State<CompareGenderWise> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        // const Text("Class A"),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 400,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "Class ${widget.selectedList[index].classRoomName}",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                            fontSize: 18.sp),
                      ),
                      RadialChartWidget(classRoom: widget.selectedList[0]),
                      const VerticalDivider(
                        color: primaryColor,
                        thickness: 0.5,
                        width: 0.5,
                      ),
                    ],
                  ),
                ],
              );
            },
            itemCount: widget.selectedList.length,
          ),
        ),
      ]),
    );
  }
}

class RadialChartWidget extends StatefulWidget {
  ClassRoom classRoom;
  RadialChartWidget({Key? key, required this.classRoom}) : super(key: key);

  @override
  _RadialChartWidgetState createState() => _RadialChartWidgetState();
}

class _RadialChartWidgetState extends State<RadialChartWidget> {
  int male = 0, female = 0, middle = 0;

  List<_ChartData> chartData = [
    _ChartData('Jan', 86, Colors.red),
    _ChartData('Feb', 70, primaryColor),
  ];

  // void getMaleFemaleRatio() {
  //   male = 0;
  //   middle = 0;
  //   female = 0;
  //   for (int i = 0; i < widget.classRoom.students!.length; i++) {
  //     print(
  //         '${widget.classRoom.students![i].gender}+${widget.classRoom.students![i].studentName}');

  //     if (widget.classRoom.students![i].gender == Gender.Male) {
  //       male++;
  //     } else if (widget.classRoom.students![i].gender == Gender.Female) {
  //       female++;
  //     } else {
  //       middle++;
  //     }
  //   }
  // print(male);
  // print(female);
  // print('object');
  // chartData.add(_ChartData('Male', male, Colors.blue));
  // chartData.add(_ChartData('Female', female, whiteColor));
  // chartData.add(_ChartData('Other', middle, Colors.black));
  //}

  // @override
  // void initState() {
  //   super.initState();
  //   getMaleFemaleRatio();
  // }

  @override
  Widget build(BuildContext context) {
    return SfCircularChart(
        backgroundColor: Colors.transparent,
        series: <CircularSeries>[
          // RADIAL | DOUGHNUT SERIES
          DoughnutSeries<_ChartData, String>(
            // trackColor: Colors.grey.shade800,
            dataSource: chartData,
            // gap: '3%',
            radius: '60',
            xValueMapper: (_ChartData data, _) => data.x,
            yValueMapper: (_ChartData data, _) => data.y,
            //  pointColorMapper: (_ChartData data, _) => data.color,
            // cornerStyle: CornerStyle.bothCurve,
            dataLabelSettings: const DataLabelSettings(isVisible: true),
            // radius: '70%',
            // innerRadius: '30%'
          ),
        ]);
  }
}

class _ChartData {
  _ChartData(this.x, this.y, this.color);
  final String x;
  final num y;
  final Color color;
}
