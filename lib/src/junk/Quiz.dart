import 'package:flutter/material.dart';
import 'package:flutter_learning/src/junk/QuestionScreen.dart';

import '../quiz/QuizHomeWidget.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;
  var activeScreen = "quiz-home-widget";

  /*@override
  void initState() {
    activeScreen = QuizHomeWidget(switchScreen);
    super.initState();
  }*/

  void switchScreen() {
    setState(() {
      // activeScreen = QuestionScreen();
      activeScreen = "question-screen";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 78, 13, 151),
            Color.fromARGB(255, 107, 15, 168),
          ], begin: Alignment.topLeft)),
          child: activeScreen == "quiz-home-widget"
              ? QuizHomeWidget(switchScreen)
            : const QuestionScreen(),
        ),
      ),
    );
  }
}
