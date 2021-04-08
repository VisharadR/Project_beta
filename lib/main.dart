import 'package:flutter/material.dart';
import 'home.dart';
// import './home2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auditor',
      home: MyHomeScreen(),
      theme: ThemeData(
        fontFamily: 'Raleway',
        textTheme: Theme.of(context).textTheme.copyWith(
            headline1: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 30,
                fontWeight: FontWeight.w100,
                color: Colors.black87),
            headline2: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 33,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple[900]),
            headline3: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 25,
                fontWeight: FontWeight.w100,
                color: Colors.black87),
            headline4: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 23,
                color: Colors.grey[600],
                fontWeight: FontWeight.w100)),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
