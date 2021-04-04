import 'package:flutter/material.dart';
import 'size_config.dart';
import 'classes.dart';

class MyFloatingButtonAction extends StatefulWidget {
  final Function() onPressed;
  final String tooltip;
  final IconData icon;

  MyFloatingButtonAction({this.onPressed, this.tooltip, this.icon});

  @override
  _MyFloatingButtonActionState createState() => _MyFloatingButtonActionState();
}

class _MyFloatingButtonActionState extends State<MyFloatingButtonAction>
    with SingleTickerProviderStateMixin {
  bool isOpened = false;
  var bottomSheetController;
  AnimationController _animationController;
  Animation<Color> _animateColor;
  Animation<double> _animateIcon;
  Curve _curve = Curves.easeOut;

  initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600))
          ..addListener(() {
            setState(() {});
          });
    _animateIcon =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);
    _animateColor = ColorTween(
      begin: Colors.amberAccent,
      end: Colors.red,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Interval(
        0.00,
        1.00,
        curve: _curve,
      ),
    ));
    super.initState();
  }

  @override
  dispose() {
    _animationController.dispose();
    super.dispose();
  }

  animate() {
    setState(() {
      if (!isOpened) {
        _animationController.forward();
        bottomSheetController = showBottomSheet(
            context: context,
            builder: (ctx) {
              return Container(
                color: Colors.black12,
                height: SizeConfig.blockSizeVertical * 20,
                child: Align(
                  alignment: Alignment(0, .80),
                  child:
                      RaisedButton(child: Text('Add Class'), onPressed: () {}),
                ),
              );
            });
        bottomSheetController.closed.then((value) {
          setState(() {
            isOpened = !isOpened;
          });
        });
      } else {
        _animationController.reverse();
        Navigator.of(context).pop();
        setState(() {
          isOpened = !isOpened;
        });
      }
      isOpened = !isOpened;
    });
  }

  List<ClassRoom> dynamicList = [];
  addDynamic() {
    // dynamicList.add(new ClassRoom());
  }

  Widget toggle() {
    return FloatingActionButton(
      onPressed: animate,

      // showBottomSheet(
      //   context: context,
      //   builder: (context) => Container(
      //     color: Colors.black12,
      //     height: SizeConfig.blockSizeVertical * 20,
      //     child: Align(
      //       alignment: Alignment(0, .80),
      //       child: RaisedButton(
      //         child: Text('Add Class'),
      //         onPressed: addDynamic,
      //       ),
      //     ),
      //   ),

      tooltip: 'Toggle',
      // child: Icon(
      //   Icons.add,
      // ),
      child: AnimatedIcon(
        icon: AnimatedIcons.menu_close,
        progress: _animateIcon,
      ),
      // child: Icon(Icons.add),
      // foregroundColor: Colors.white,
      // backgroundColor: Colors.black26,
      // elevation: 5,
    );
  }

  @override
  Widget build(BuildContext context) {
    return toggle();
  }
}
