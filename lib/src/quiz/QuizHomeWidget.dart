import 'package:flutter/material.dart';

class QuizHomeWidget extends StatelessWidget {

  const QuizHomeWidget(this.startQuiz, {super.key});


   final void Function() startQuiz;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient:
          LinearGradient(colors: [Colors.purple, Colors.purpleAccent])),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "assets/images/quiz-logo.png",
              width: 200,
            ),
          ),
          SizedBox(height: 20.0),
          Text(
            "Learn Flutter the fun way!",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          SizedBox(height: 20),
          OutlinedButton.icon(
              icon: Icon(Icons.arrow_right_alt),
              onPressed: startQuiz,
              label: Text(
                "Start Quiz",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ))
        ],
      ),
    );
  }
}
