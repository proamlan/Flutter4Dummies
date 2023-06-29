import 'package:flutter/material.dart';
import 'package:flutter_learning/src/junk/OldHome.dart';
import 'package:flutter_learning/src/splash/Splash.dart';
import 'package:flutter_learning/src/utils/Constants.dart';
import 'package:flutter_learning/src/login/LoginPage.dart';

void main() {
  print("count is : $count");
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      routes: {
        "/login": (context) => LoginPage()
      },
    );
  }
}
