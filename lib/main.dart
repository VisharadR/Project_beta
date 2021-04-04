import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: MaterialApp(
      title: 'test_1',
      // theme: ThemeData.dark(),
      home: homeScreen('Test_1'),
    ));
  }
}
