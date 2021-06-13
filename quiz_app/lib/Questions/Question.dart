

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/Models/QuizQuestions.dart';

// ignore: must_be_immutable
class Question extends StatelessWidget {
  final QuizQuestion question;
  Function(Answer) answerQuestion;

  Question({required this.question, required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text(
              question.question,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 18,
                  color: const Color.fromARGB(255, 45, 102, 1)
              )
          ),
          margin: EdgeInsets.only(top: 28, left: 32, right: 32),
        ),
        ListView.builder(
            padding: const EdgeInsets.all(10.0),
            shrinkWrap: true,
            itemCount: question.answers.length,
            itemBuilder: (context, i) {
              return ElevatedButton(onPressed: () { answerQuestion(question.answers[i]); }, child: Text(question.answers[i].answer));
            }
        )
      ],
    );
  }
}