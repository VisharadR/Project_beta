import 'package:flutter/material.dart';
import 'package:flashy_tab_bar/flashy_tab_bar.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  void selected(int sno) {
    int prevIndex;
    if (prevIndex != sno) {
      prevIndex = sno;
      setState(() {
        _selectedIndex = sno;
      });
    } else if (prevIndex == sno) {
      setState(() {
        _selectedIndex = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return FlashyTabBar(
      backgroundColor: Colors.lightBlue[300],
      selectedIndex: _selectedIndex,
      showElevation: true,
      // onItemSelected: (index) => setState(() {
      //   _selectedIndex = index;
      //   selected(index);
      //   // print(_selectedIndex);
      // }),
      onItemSelected: (index) => selected(index),
      items: [
        FlashyTabBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        FlashyTabBarItem(
          icon: Icon(Icons.account_circle),
          title: Text('Profile'),
        ),
        FlashyTabBarItem(
          icon: Icon(
            Icons.add_circle,
          ),
          title: Text('Add Class'),
        ),
        FlashyTabBarItem(
          icon: Icon(Icons.settings),
          title: Text('Settings'),
        ),
      ],
    );
  }
}
