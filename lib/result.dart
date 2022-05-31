import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'main.dart';

class MyResult extends StatelessWidget {
  final int score;
  final Function restart;
  MyResult(this.score, this.restart);
  String get scorePhase {
    String resultText;
    if (score >= 70) {
      resultText = "you are great";
    } else if (score >= 40) {
      resultText = "you are good";
    } else {
      resultText = "you are so bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'your score is $score',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 35,color: b,fontWeight: FontWeight.bold),
        ),
        Text(
          scorePhase,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: b),
        ),
        FlatButton(onPressed: restart, child: Text('Restart The App',style: TextStyle(color: Colors.blue),))
      ],
    ));
  }
}
