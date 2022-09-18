import 'package:flutter/material.dart';
import './questions.dart';
import './answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function(int) buttonPressed;
  final int questionIndex;
  

  // ignore: use_key_in_widget_constructors
  const Quiz(
      {required this.buttonPressed,
      required this.questionIndex,
      required this.questions});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Question(questions[questionIndex]['QuestionText'] as String),
          ...(questions[questionIndex]['Answers']
                  as List<Map<String, Object>>)
              .map((Map<String, Object> answerText) {
            return Answer(answerText['text'] as String, buttonPressed,
                answerText['score'] as int);
          }).toList()
        ],
      ),
    );
  }
}