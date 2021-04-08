import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10, 30, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi,',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Text(
                    'R Visharad',
                    style: Theme.of(context).textTheme.headline2,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
              child: IconButton(
                  splashRadius: 1,
                  icon: Icon(
                    Icons.account_circle_outlined,
                    color: Colors.deepPurple[900],
                    size: 50,
                  ),
                  onPressed: () {}),
            ),
          ],
        ),
      ],
    );
  }
}
