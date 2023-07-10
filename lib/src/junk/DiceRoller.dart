import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = "assets/images/dice-1.png";

  void rollDice() {
    var randomValue = Random().nextInt(6) + 1;
    setState(() {
      activeDiceImage = "assets/images/dice-$randomValue.png";
    });
    print("Clicked roll dice");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(activeDiceImage, width: 100),
        TextButton(
          onPressed: rollDice,
          child: const Text("Roll Dice"),
        )
      ],
    );
  }
}
