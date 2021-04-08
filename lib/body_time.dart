import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeBodyTime extends StatelessWidget {
  final DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
          child: Text(
            DateFormat.yMMMd().format(date),
            style: TextStyle(
                fontFamily: 'RaleWay',
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w100),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 30),
          child: Text(
            'Today',
            style: TextStyle(
                fontFamily: 'RaleWay',
                color: Colors.purple[600],
                fontSize: 30,
                fontWeight: FontWeight.w900),
          ),
        )
      ],
    );
  }
}
