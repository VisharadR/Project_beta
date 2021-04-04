import 'package:flutter/material.dart';
import 'classes.dart';
import 'size_config.dart';
import 'drawer.dart';
import 'floatingbutton.dart';

class homeScreen extends StatefulWidget {
  final String title;
  homeScreen(this.title);
  @override
  _homeScreenState createState() => new _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  bool theme = false;
  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
        border: Border.all(color: Colors.blue.shade700, width: 2.0),
        color: Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(20.0)));
  }

  _drawers() {
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
                value: theme,
                onChanged: (changedTheme) {
                  setState(() {
                    theme = changedTheme;
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var height = SizeConfig.blockSizeVertical * 18;
    var width = SizeConfig.blockSizeHorizontal * 90;
    // print(height);
    // print(width);
    return MaterialApp(
        theme: theme ? ThemeData.dark() : ThemeData.light(),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Test_1'),
            toolbarHeight: SizeConfig.blockSizeVertical * 8,
            backgroundColor: Colors.blue.shade800,
          ),
          // bottomNavigationBar: BottomAppBar(
          //     shape: CircularNotchedRectangle(),
          //     color: Colors.blue.shade700,
          //     child: Container(
          //       height: 50.0,
          //     )),
          floatingActionButton: MyFloatingButtonAction(
            icon: Icons.add,
          ),
          // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          body: Align(
            alignment: Alignment(0, -0.90),
            // decoration: myBoxDecoration(),
            child: InkWell(
              // width: 313.0,
              // height: 95.0,
              child: ClassRoom(height, width),
            ),
          ),
          // drawer: Drawers(theme),
          drawer: _drawers(),
        ));
  }
}
