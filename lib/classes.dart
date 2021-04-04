import 'package:flutter/material.dart';
import 'size_config.dart';

class ClassRoom extends StatelessWidget {
  final double height;
  final double width;
  ClassRoom(@required this.height, @required this.width);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: width,
        height: height,
        // decoration: myBoxDecoration(),
        child: RaisedButton(
          child: Text('Helo'),
          onPressed: () {
            print('helo');
          },
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: Colors.red)),
        ),
      ),
    );
  }
}
