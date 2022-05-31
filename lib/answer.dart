import 'package:flutter/material.dart';

import 'main.dart';

class MyAnswer extends StatelessWidget {
  final String _answerText;
  final Function _answerFuncation;
  MyAnswer(this._answerFuncation, this._answerText);

  @override
  Widget build(BuildContext context) {
    return Container(

      width: double.infinity,
      padding: EdgeInsets.all(10.0),
      child: RaisedButton(
        color: Colors.blue,
        child: Text(
          _answerText,
          style: TextStyle(fontSize: 30, color: w ),
        ),
        onPressed: _answerFuncation,
      ),
    );
  }
}
