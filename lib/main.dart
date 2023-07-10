import 'package:flutter/material.dart';
import 'package:flutter_learning/src/junk/Quiz.dart';
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
        home: Quiz());
  }
}
