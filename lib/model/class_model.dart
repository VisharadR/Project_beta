import 'package:flutter/material.dart';

class ClassesModel {
  final double classId;
  final String subject;
  final String teacherName;
  final String classTime;

  const ClassesModel(
      {@required this.classId,
      @required this.subject,
      @required this.teacherName,
      @required this.classTime});
}
