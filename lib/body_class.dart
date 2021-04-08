import 'package:auditor_app/class_creator.dart';
import 'package:flutter/material.dart';

import './model/DUMMY_DATA.dart';
import './class_creator.dart';

class BodyClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: CLASSES_DATA.length,
        itemBuilder: (context, index) => ClassCreator(
            CLASSES_DATA[index].classId,
            CLASSES_DATA[index].subject,
            CLASSES_DATA[index].teacherName,
            CLASSES_DATA[index].classTime));
  }
}
