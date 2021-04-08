import 'package:flutter/material.dart';

import './appBarCustom.dart';
import './body_time.dart';
import './bottom_bar.dart';
import './body_class.dart';

class MyHomeScreen extends StatefulWidget {
  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  final DateTime date = DateTime.now();

  add() {
    setState(() {
      return Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.lightBlue),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            'helo',
            style: TextStyle(fontSize: 20),
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavBar(),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                colors: [Colors.white, Colors.lightBlue[200]])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 0, 20),
              child: AppBarCustom(),
            ),
            Container(
              child: HomeBodyTime(),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
              child: Container(
                child: BodyClass(),
                height: ((MediaQuery.of(context).size.height / 100) * 60.7),
              ),
            ),
            // BottomNavBar(),
          ],
        ),
      ),
    );
  }
}
