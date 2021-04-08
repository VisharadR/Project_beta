import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import './body_time.dart';
import './bottom_bar.dart';

class MyHomeScreen extends StatefulWidget {
  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // flexibleSpace: Container(
        //   decoration: BoxDecoration(
        //       gradient: LinearGradient(
        //           begin: Alignment.centerLeft,
        //           colors: [Colors.white, Colors.lightBlue[400]])),
        // ),
        toolbarHeight: (MediaQuery.of(context).size.width / 100) * 30,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(4, 20, 20, 4),
              child: Text('Hi,', style: Theme.of(context).textTheme.headline1),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(4, 1, 20, 20),
              child: Text('Visharad',
                  style: Theme.of(context).textTheme.headline2),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: IconButton(
                splashRadius: 01,
                icon: Icon(
                  Icons.account_circle_outlined,
                  size: (MediaQuery.of(context).size.width / 100) * 13,
                  color: Colors.deepPurple[900],
                ),
                onPressed: () {}),
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        // color: Colors.white,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                // begin: Alignment.topLeft,
                // colors: [Colors.white, Colors.lightBlue[100]])
                begin: Alignment.centerLeft,
                colors: [Colors.white, Colors.lightBlue[400]])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            HomeBodyTime(),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: BottomNavBar(),
      ),
    );
  }
}
