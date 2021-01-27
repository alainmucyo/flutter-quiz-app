import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function buttonClickHandler;
  final String answerText;

  const Answer(this.buttonClickHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 20, right: 20),
      child: RaisedButton(
        onPressed: buttonClickHandler,
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
      ),
    );
  }
}
