import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultsScore;
  final VoidCallback reset;
  const Result({Key key, this.resultsScore, this.reset}) : super(key: key);

  String get resultPhrase {
    var resultText;
    if (resultsScore <= 8) {
      resultText = 'You are awersome and innocent!';
    } else if (resultsScore <= 12) {
      resultText = 'Pretty likeable';
    } else if (resultsScore <= 16) {
      resultText = 'You are strange ?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            onPressed: reset,
            child: Text('Restart Quiz!'),
            style:
                TextButton.styleFrom(textStyle: TextStyle(color: Colors.blue)),
          ),
        ],
      ),
    );
  }
}
