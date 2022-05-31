import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';


class MyQuiz extends StatelessWidget {
  final List question;
  final int questionIndex;
  final Function answerQuestion;

  MyQuiz(this.question,this.questionIndex,this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyQuestion(question[questionIndex]['question']),
        ...(question[questionIndex]['answers'] as List<Map<String,Object>>)
            .map((answer) {
          return
            MyAnswer(()=>answerQuestion(answer['score']),answer['text']);
        })
            .toList()
      ],
    );
  }
}