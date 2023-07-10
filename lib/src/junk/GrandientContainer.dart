import 'package:flutter/material.dart';
import 'package:flutter_learning/src/junk/DiceRoller.dart';

class GradientContainer extends StatelessWidget {
  GradientContainer(this.startColor, this.endColor, {super.key});

  final Color startColor;
  final Color endColor;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [startColor, endColor],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }


}
