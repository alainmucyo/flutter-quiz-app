import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final Function incrementIndex;
  final List<Map<String, Object>> questions;
  final int questionIndex;

  Quiz(this.questions, this.incrementIndex, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Container(child: Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<String>)
            .map((answer) {
          return Answer(incrementIndex, answer);
        }).toList()
      ],
    ),);
  }
}
