import 'dart:math';

import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int questionIndex = 0;
  bool finished = false;
  int score = 0;
  final _questions = [
    {
      "questionText": "What's your favorite color?",
      "answers": ["Green", "Blue", "Yellow", "Black"]
    },
    {
      "questionText": "What's your favorite animal?",
      "answers": ["Cat", "Dog", "Lion", "Leopard"]
    },
    {
      "questionText": "What's your favorite programming language?",
      "answers": ["Python", "Java", "C++", "Dart"]
    },
  ];

  void answerQuestion() {
    Random random = new Random();
    setState(() {
      this.score += random.nextInt(11);
      if (questionIndex < (_questions.length - 1))
        this.questionIndex++;
      else
        this.finished = true;
    });
  }

  void reset() {
    setState(() {
      this.score = 0;
      this.questionIndex = 0;
      this.finished = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello World"),
        ),
        body: !finished
            ? Quiz(_questions, answerQuestion, questionIndex)
            : Result(score, reset),
      ),
    );
  }
}
