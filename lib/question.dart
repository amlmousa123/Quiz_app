import 'package:flutter/material.dart';

import 'main.dart';

class MyQuestion extends StatelessWidget {
  final String _questionText;
  MyQuestion(this._questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      child: Text(
        _questionText,
        style: TextStyle(fontSize: 30,color: b,fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
