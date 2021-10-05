import 'dart:ui';

import 'package:app_skeleton/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'app Skeleton',
      home: SplashScreen(),
      theme: ThemeData(
        primaryColor: Color(0XFF181A20),
        highlightColor: Color(0XFF8FFAFF),
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          headline2: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.normal,
            color: Colors.blueGrey[200],
          ),
          headline3: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey[200],
          ),
          headline4: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
