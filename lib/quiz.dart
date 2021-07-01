import 'package:QuizApp/answer.dart';
import 'package:QuizApp/question.dart';
import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;
  const Quiz(
      {@required this.questions,
      @required this.questionIndex,
      @required this.answerQuestion,
      Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['QText']),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}