import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function() reset;
  const Result(this.resultScore, this.reset);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Padding(padding: EdgeInsets.symmetric(vertical: 30.0)),
        Text(
          'You did it!\nYour Score:' + resultScore.toString(),
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 222, 107, 7),

          ),
        ),
        const SizedBox(
          height: 60,
        ),
        ElevatedButton(
          onPressed: reset,
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Retry",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          // style: ElevatedButton.styleFrom(
          //   primary: Colors.yellow,
          //   onPrimary: Colors.red,
          // ),
          style: ElevatedButton.styleFrom(
            primary: Colors.green,
           ),
        ),
      ]),
    );
  }
}
