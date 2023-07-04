import 'package:flutter/material.dart';

import 'package:flutter_learning/src/utils/Constants.dart';
import 'package:flutter_learning/src/splash/Splash.dart';
import 'package:flutter_learning/src/ui/MovieList.dart';

void main() {
  print("count is : $count");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MovieList(),
    );
  }
}
