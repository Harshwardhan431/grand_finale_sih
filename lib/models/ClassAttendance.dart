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

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the ClassAttendance type in your schema. */
@immutable
class ClassAttendance extends Model {
  static const classType = const _ClassAttendanceModelType();
  final String id;
  final String? _classID;
  final TemporalDate? _date;
  final double? _presentPercent;
  final String? _teacherEmail;
  final TemporalTime? _time;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
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
  
  double? get presentPercent {
    return _presentPercent;
  }
  
  String? get teacherEmail {
    return _teacherEmail;
  }
  
  TemporalTime? get time {
    return _time;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const ClassAttendance._internal({required this.id, required classID, required date, presentPercent, teacherEmail, time, createdAt, updatedAt}): _classID = classID, _date = date, _presentPercent = presentPercent, _teacherEmail = teacherEmail, _time = time, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory ClassAttendance({String? id, required String classID, required TemporalDate date, double? presentPercent, String? teacherEmail, TemporalTime? time}) {
    return ClassAttendance._internal(
      id: id == null ? UUID.getUUID() : id,
      classID: classID,
      date: date,
      presentPercent: presentPercent,
      teacherEmail: teacherEmail,
      time: time);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClassAttendance &&
      id == other.id &&
      _classID == other._classID &&
      _date == other._date &&
      _presentPercent == other._presentPercent &&
      _teacherEmail == other._teacherEmail &&
      _time == other._time;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("ClassAttendance {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("classID=" + "$_classID" + ", ");
    buffer.write("date=" + (_date != null ? _date!.format() : "null") + ", ");
    buffer.write("presentPercent=" + (_presentPercent != null ? _presentPercent!.toString() : "null") + ", ");
    buffer.write("teacherEmail=" + "$_teacherEmail" + ", ");
    buffer.write("time=" + (_time != null ? _time!.format() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  ClassAttendance copyWith({String? id, String? classID, TemporalDate? date, double? presentPercent, String? teacherEmail, TemporalTime? time}) {
    return ClassAttendance._internal(
      id: id ?? this.id,
      classID: classID ?? this.classID,
      date: date ?? this.date,
      presentPercent: presentPercent ?? this.presentPercent,
      teacherEmail: teacherEmail ?? this.teacherEmail,
      time: time ?? this.time);
  }
  
  ClassAttendance.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _classID = json['classID'],
      _date = json['date'] != null ? TemporalDate.fromString(json['date']) : null,
      _presentPercent = (json['presentPercent'] as num?)?.toDouble(),
      _teacherEmail = json['teacherEmail'],
      _time = json['time'] != null ? TemporalTime.fromString(json['time']) : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'classID': _classID, 'date': _date?.format(), 'presentPercent': _presentPercent, 'teacherEmail': _teacherEmail, 'time': _time?.format(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };

  static final QueryField ID = QueryField(fieldName: "classAttendance.id");
  static final QueryField CLASSID = QueryField(fieldName: "classID");
  static final QueryField DATE = QueryField(fieldName: "date");
  static final QueryField PRESENTPERCENT = QueryField(fieldName: "presentPercent");
  static final QueryField TEACHEREMAIL = QueryField(fieldName: "teacherEmail");
  static final QueryField TIME = QueryField(fieldName: "time");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ClassAttendance";
    modelSchemaDefinition.pluralName = "ClassAttendances";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ClassAttendance.CLASSID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ClassAttendance.DATE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ClassAttendance.PRESENTPERCENT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ClassAttendance.TEACHEREMAIL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ClassAttendance.TIME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.time)
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

class _ClassAttendanceModelType extends ModelType<ClassAttendance> {
  const _ClassAttendanceModelType();
  
  @override
  ClassAttendance fromJson(Map<String, dynamic> jsonData) {
    return ClassAttendance.fromJson(jsonData);
  }
}