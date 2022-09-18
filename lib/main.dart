import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(const LearnSquare(
  
));
// void main() {
//   runApp(const LearnSquare());
// }

class LearnSquare extends StatefulWidget {
  ///stateful widget for update a external data
  const LearnSquare({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    //change a states
    return LearnSquareState(
      
    );
  }
}

class LearnSquareState extends State<LearnSquare> {
  // update a widgets in internal
  
  
 
  final _questions = [
    {
      'QuestionText': '1.A circular linked list can be used for',
      'Answers': [
        {'text': 'Stack', 'score': 0},
        {'text': 'Queue', 'score': 0},
        {'text': 'Both Stack & Queue', 'score': 10},
        {'text': 'Neither Stack or Queue', 'score': 0},
      ],
    },
    {
      'QuestionText': '2.Quick sort algorithm is an example of',
      'Answers': [
        {'text': 'Greedy approach', 'score': 0},
        {'text': 'Improved binary search', 'score': 0},
        {'text': 'Dynamic Programming', 'score': 0},
        {'text': 'Divide and conquer', 'score': 10},
      ],
    },
    {
      'QuestionText': '3.Which of the following searching techniques do not require the data to be in sorted form',
      'Answers': [
        {'text': ' Binary Search', 'score': 10},
        {'text': 'Interpolation Search','score':0},
        {'text': 'Linear Search','score':0},
        {'text': 'All of the above','score':0},
      ],
    },
    {
      'QuestionText': '4.Graph traversal is different from a tree traversal, because',
      'Answers': [
        {'text': 'trees are not connected', 'score': 0},
        {'text': 'graphs may have loops','score':0},
        {'text': 'trees have root','score':10},
        {'text': 'None is true as tree is a subset of graph','score':0},
      ],
    },
    {
      'QuestionText': '5.Time required to merge two sorted lists of size m and n, is',
      'Answers': [
        {'text': ' O(m | n)', 'score': 0},
        {'text': ' O(m + n)','score':10},
        {'text': 'O(m log n)','score':0},
        {'text': 'O(n log m)','score':0},
      ],
    },
  ];

  int _questionIndex = 0;
  int _totalScore=0;

  void _onPressed(int score) {
    setState(() {
      _totalScore+=score;
      _questionIndex = _questionIndex + 1;
      
    });

  }

  void _reset(){
    setState(() {
      _questionIndex = 0;
      _totalScore=0;
    });
    

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Data Structure Quiz",),
          backgroundColor: Colors.green,
        
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                buttonPressed: _onPressed,
                questionIndex: _questionIndex,  
                questions: _questions,
              )
            : Result(_totalScore,_reset),
      ),
    );
  }
}
