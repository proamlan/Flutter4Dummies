import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Image.asset(
        "assets/images/splash.jpg",
        fit: BoxFit.cover,
      ),
    );
  }
}
