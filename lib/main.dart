import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

Color w = Colors.white;
Color b = Colors.black;

class _MyAppState extends State<MyApp> {
  bool isSwitched = false;
  int _questionIndex = 0;
  int _totalScore = 0;
  int num0, num1, num2;

  void _answerQuestion(score) {
    if (_questionIndex == 0) num0 = score;
    if (_questionIndex == 1) num1 = score;
    if (_questionIndex == 2) num2 = score;

    setState(() {
      _totalScore += score;
      _questionIndex += 1;
    });
  }

  void _restart() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      num0 = 0;
      num1 = 0;
      num2 = 0;
    });
  }

  final List _question = [
    {
      'question': 'what\'s your favourit color ? ',
      'answers': [
        {'text': 'white', 'score': 10},
        {'text': 'blue', 'score': 20},
        {'text': 'black', 'score': 30},
        {'text': 'red', 'score': 40}
      ]
    },
    {
      'question': 'what\'s your favourit animal ? ',
      'answers': [
        {'text': 'lion', 'score': 10},
        {'text': 'elephant', 'score': 20},
        {'text': 'cat', 'score': 30},
        {'text': 'dog', 'score': 40}
      ]
    },
    {
      'question': 'what\'s your job ? ',
      'answers': [
        {'text': 'doctor', 'score': 10},
        {'text': 'programmer', 'score': 20},
        {'text': 'teacher', 'score': 30},
        {'text': 'designer', 'score': 40}
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Quiz App',
            style: TextStyle(color: w),
          ),
          actions: [
            Switch(
              value: isSwitched,
              onChanged: (value) {
                isSwitched = value;
                setState(() {
                  if (isSwitched == true) {
                    b = Colors.white;
                    w = Colors.black;
                  } else {
                    w = Colors.white;
                    b = Colors.black;
                  }
                });
              },
              activeColor: Colors.white,
              inactiveThumbColor: Colors.black,
              inactiveTrackColor: Colors.black,
            )
          ],
        ),
        body: Container(
          color: w,
          child: _questionIndex < _question.length
              ? MyQuiz(_question, _questionIndex, _answerQuestion)
              : MyResult(_totalScore, _restart),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (_questionIndex == 1) _totalScore -= num0;
            if (_questionIndex == 2) _totalScore -= num1;
            if (_questionIndex == 3) _totalScore -= num2;
            setState(() {
              if (_questionIndex > 0) _questionIndex -= 1;
            });
          },
          child: Icon(Icons.arrow_back,color: w,),
        ),
      ),
    );
  }
}
