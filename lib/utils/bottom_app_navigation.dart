import 'package:flutter/material.dart';
import 'package:ofds/main.dart';
import 'package:ofds/screens/restaurantHome.dart';

import '../screens/profile.dart';

Future<void> bottom_navigation(
    int index, BuildContext context, int boolCheck) async {
  if (index == 0) {
    if (boolCheck == 0) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MyHomePage(
                    title: boolCheck,
                  )));
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => RestaurantHome()));
    }
  } else if (index == 1) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (builder) => Profile(
                  viewState: boolCheck,
                )));
  } else if (index == 2) {
    // Navigator.push(context, MaterialPageRoute(builder: (context) => Analytics()));
  } else if (index == 3) {
    //  Navigator.push(context, MaterialPageRoute(builder: (context) => Learn()));
  }
}
