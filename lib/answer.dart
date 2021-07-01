import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function func;
  final String answertext;
  const Answer(this.func, this.answertext);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(answertext),
        onPressed: () {
          func();
        },
      ),
    );
  }
}