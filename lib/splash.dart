import 'dart:async';

import 'package:flutter/material.dart';

import 'home.dart';

class splash extends StatelessWidget {
  static const String id = 'splash';
  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushNamed(context, Home.id),
    );
    return Container(
      color: Color(0xffa81950),
      child: Image(
        image: AssetImage("assets/img/splash.png"),
      ),
    );
  }
}
