import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function reset;

  Result(this.score, this.reset);

  String get scoreResult {
    if (score <= 8)
      return "You are the best!";
    else if (score <= 15)
      return "You are likable!";
    else if (score <= 23)
      return "You are bad!";
    else
      return "You are horrible!";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Center(
          child: Column(
        children: [
          Text(
            scoreResult,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            onPressed: reset,
            color: Colors.blue,
            textColor: Colors.white,
            child: Text("Restart Quiz"),
          )
        ],
      )),
    );
  }
}
