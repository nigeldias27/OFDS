import 'package:flutter/material.dart';

import '../utils/bottom_app_navigation.dart';

class BottomAppNav extends StatefulWidget {
  final index;
  final int boolcheck;
  const BottomAppNav({Key? key, this.index, required this.boolcheck})
      : super(key: key);

  @override
  State<BottomAppNav> createState() => _BottomAppNavState();
}

class _BottomAppNavState extends State<BottomAppNav> {
  var activeColor = Colors.deepPurpleAccent.shade100;
  var color = Colors.deepPurple.shade50;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: widget.index,
        onTap: (int index) {
          bottom_navigation(index, context, widget.boolcheck);
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.explore,
                color: widget.index == 0 ? activeColor : color,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: widget.index == 1 ? activeColor : color,
              ),
              label: " "),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: widget.index == 2 ? activeColor : color,
              ),
              label: " "),
        ]);
  }
}
