import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _answerText;
  final Function(int) _answerQuestion;

  final int _Score;
  const Answer(this._answerText, this._answerQuestion, this._Score);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ElevatedButton(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Text(
                _answerText,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            onPressed: () => _answerQuestion(_Score),
            // ignore: prefer_const_constructors
           style: ElevatedButton.styleFrom(
            primary: Colors.green,
           ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
