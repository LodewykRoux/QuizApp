import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function func;
  final String answertext;
  const Answer(this.func, this.answertext);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          onPrimary: Colors.white,
        ),
        child: Text(answertext),
        onPressed: () {
          func();
        },
      ),
    );
  }
}
