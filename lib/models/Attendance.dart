/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Attendance type in your schema. */
@immutable
class Attendance extends Model {
  static const classType = const _AttendanceModelType();
  final String id;
  final String? _studentID;
  final String? _studentName;
  final AttendanceStatus? _status;
  final double? _geoLatitude;
  final double? _geoLongitude;
  final VerificationStatus? _verification;
  final String? _teacherID;
  final String? _teacherName;
  final Gender? _gender;
  final TemporalDate? _date;
  final TemporalTime? _time;
  final String? _classID;
  final String? _className;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get studentID {
    try {
      return _studentID!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get studentName {
    try {
      return _studentName!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  AttendanceStatus get status {
    try {
      return _status!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  double? get geoLatitude {
    return _geoLatitude;
  }
  
  double? get geoLongitude {
    return _geoLongitude;
  }
  
  VerificationStatus get verification {
    try {
      return _verification!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get teacherID {
    try {
      return _teacherID!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get teacherName {
    try {
      return _teacherName!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  Gender? get gender {
    return _gender;
  }
  
  TemporalDate get date {
    try {
      return _date!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  TemporalTime get time {
    try {
      return _time!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get classID {
    try {
      return _classID!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get className {
    try {
      return _className!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Attendance._internal({required this.id, required studentID, required studentName, required status, geoLatitude, geoLongitude, required verification, required teacherID, required teacherName, gender, required date, required time, required classID, required className, createdAt, updatedAt}): _studentID = studentID, _studentName = studentName, _status = status, _geoLatitude = geoLatitude, _geoLongitude = geoLongitude, _verification = verification, _teacherID = teacherID, _teacherName = teacherName, _gender = gender, _date = date, _time = time, _classID = classID, _className = className, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Attendance({String? id, required String studentID, required String studentName, required AttendanceStatus status, double? geoLatitude, double? geoLongitude, required VerificationStatus verification, required String teacherID, required String teacherName, Gender? gender, required TemporalDate date, required TemporalTime time, required String classID, required String className}) {
    return Attendance._internal(
      id: id == null ? UUID.getUUID() : id,
      studentID: studentID,
      studentName: studentName,
      status: status,
      geoLatitude: geoLatitude,
      geoLongitude: geoLongitude,
      verification: verification,
      teacherID: teacherID,
      teacherName: teacherName,
      gender: gender,
      date: date,
      time: time,
      classID: classID,
      className: className);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Attendance &&
      id == other.id &&
      _studentID == other._studentID &&
      _studentName == other._studentName &&
      _status == other._status &&
      _geoLatitude == other._geoLatitude &&
      _geoLongitude == other._geoLongitude &&
      _verification == other._verification &&
      _teacherID == other._teacherID &&
      _teacherName == other._teacherName &&
      _gender == other._gender &&
      _date == other._date &&
      _time == other._time &&
      _classID == other._classID &&
      _className == other._className;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Attendance {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("studentID=" + "$_studentID" + ", ");
    buffer.write("studentName=" + "$_studentName" + ", ");
    buffer.write("status=" + (_status != null ? enumToString(_status)! : "null") + ", ");
    buffer.write("geoLatitude=" + (_geoLatitude != null ? _geoLatitude!.toString() : "null") + ", ");
    buffer.write("geoLongitude=" + (_geoLongitude != null ? _geoLongitude!.toString() : "null") + ", ");
    buffer.write("verification=" + (_verification != null ? enumToString(_verification)! : "null") + ", ");
    buffer.write("teacherID=" + "$_teacherID" + ", ");
    buffer.write("teacherName=" + "$_teacherName" + ", ");
    buffer.write("gender=" + (_gender != null ? enumToString(_gender)! : "null") + ", ");
    buffer.write("date=" + (_date != null ? _date!.format() : "null") + ", ");
    buffer.write("time=" + (_time != null ? _time!.format() : "null") + ", ");
    buffer.write("classID=" + "$_classID" + ", ");
    buffer.write("className=" + "$_className" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Attendance copyWith({String? id, String? studentID, String? studentName, AttendanceStatus? status, double? geoLatitude, double? geoLongitude, VerificationStatus? verification, String? teacherID, String? teacherName, Gender? gender, TemporalDate? date, TemporalTime? time, String? classID, String? className}) {
    return Attendance._internal(
      id: id ?? this.id,
      studentID: studentID ?? this.studentID,
      studentName: studentName ?? this.studentName,
      status: status ?? this.status,
      geoLatitude: geoLatitude ?? this.geoLatitude,
      geoLongitude: geoLongitude ?? this.geoLongitude,
      verification: verification ?? this.verification,
      teacherID: teacherID ?? this.teacherID,
      teacherName: teacherName ?? this.teacherName,
      gender: gender ?? this.gender,
      date: date ?? this.date,
      time: time ?? this.time,
      classID: classID ?? this.classID,
      className: className ?? this.className);
  }
  
  Attendance.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _studentID = json['studentID'],
      _studentName = json['studentName'],
      _status = enumFromString<AttendanceStatus>(json['status'], AttendanceStatus.values),
      _geoLatitude = (json['geoLatitude'] as num?)?.toDouble(),
      _geoLongitude = (json['geoLongitude'] as num?)?.toDouble(),
      _verification = enumFromString<VerificationStatus>(json['verification'], VerificationStatus.values),
      _teacherID = json['teacherID'],
      _teacherName = json['teacherName'],
      _gender = enumFromString<Gender>(json['gender'], Gender.values),
      _date = json['date'] != null ? TemporalDate.fromString(json['date']) : null,
      _time = json['time'] != null ? TemporalTime.fromString(json['time']) : null,
      _classID = json['classID'],
      _className = json['className'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'studentID': _studentID, 'studentName': _studentName, 'status': enumToString(_status), 'geoLatitude': _geoLatitude, 'geoLongitude': _geoLongitude, 'verification': enumToString(_verification), 'teacherID': _teacherID, 'teacherName': _teacherName, 'gender': enumToString(_gender), 'date': _date?.format(), 'time': _time?.format(), 'classID': _classID, 'className': _className, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };

  static final QueryField ID = QueryField(fieldName: "attendance.id");
  static final QueryField STUDENTID = QueryField(fieldName: "studentID");
  static final QueryField STUDENTNAME = QueryField(fieldName: "studentName");
  static final QueryField STATUS = QueryField(fieldName: "status");
  static final QueryField GEOLATITUDE = QueryField(fieldName: "geoLatitude");
  static final QueryField GEOLONGITUDE = QueryField(fieldName: "geoLongitude");
  static final QueryField VERIFICATION = QueryField(fieldName: "verification");
  static final QueryField TEACHERID = QueryField(fieldName: "teacherID");
  static final QueryField TEACHERNAME = QueryField(fieldName: "teacherName");
  static final QueryField GENDER = QueryField(fieldName: "gender");
  static final QueryField DATE = QueryField(fieldName: "date");
  static final QueryField TIME = QueryField(fieldName: "time");
  static final QueryField CLASSID = QueryField(fieldName: "classID");
  static final QueryField CLASSNAME = QueryField(fieldName: "className");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Attendance";
    modelSchemaDefinition.pluralName = "Attendances";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Attendance.STUDENTID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Attendance.STUDENTNAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Attendance.STATUS,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Attendance.GEOLATITUDE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Attendance.GEOLONGITUDE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Attendance.VERIFICATION,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Attendance.TEACHERID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Attendance.TEACHERNAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Attendance.GENDER,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Attendance.DATE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Attendance.TIME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.time)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Attendance.CLASSID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Attendance.CLASSNAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _AttendanceModelType extends ModelType<Attendance> {
  const _AttendanceModelType();
  
  @override
  Attendance fromJson(Map<String, dynamic> jsonData) {
    return Attendance.fromJson(jsonData);
  }
}