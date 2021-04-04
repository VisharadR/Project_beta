import 'package:flutter/material.dart';
import 'size_config.dart';

class Drawers extends StatefulWidget {
  bool theme;
  Drawers(@required this.theme);

  @override
  _DrawersState createState() => _DrawersState();
}

class _DrawersState extends State<Drawers> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Hi'),
          toolbarHeight: SizeConfig.blockSizeVertical * 10,
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.nightlight_round),
              title: Text('Night Mode'),
              trailing: Switch(
                value: widget.theme,
                onChanged: (changedTheme) {
                  setState(() {
                    widget.theme = changedTheme;
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
