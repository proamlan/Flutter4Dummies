import 'package:flutter/material.dart';
import 'package:flutter_learning/src/junk/GrandientContainer.dart';
import 'package:flutter_learning/src/utils/Constants.dart';

void main() {
  print("count is : $count");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: MovieList(),
      home: GradientContainer(
          Color.fromARGB(255, 26, 2, 80), Color.fromARGB(255, 45, 7, 98)),
    );
  }
}
