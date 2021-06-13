import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:quiz_app/Models/QuizQuestions.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:io';

import 'Questions/Question.dart';

void main() => runApp(MainApp());

class MainApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MainAppState();
}

class MainAppState extends State<MainApp> {
  var questionIndex = 0;
  List<QuizQuestion> questions = [];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Potter Quiz',
        home: Scaffold(
            appBar: AppBar(
              title: Text("Potter Quiz App"),
            ),
            body: Center(
                child: questions.length > 0
                    ? Question(
                        question: questions[questionIndex],
                        answerQuestion: (answer) {
                          answerQuestion(answer);
                        },
                      )
                    : Column(
                        children: [
                          Center(
                            child: CircularProgressIndicator(),
                          )
                        ],
                      ))));
  }

  void answerQuestion(Answer answer) {
    setState(() {
      if (questionIndex < questions.length - 1) {
        questionIndex += 1;
      } else {
        questionIndex = 0;
      }
    });
    print(answer.answer);
  }

  @override
  void initState() {
    super.initState();
    _loadQuestions();
  }

  Future<List<QuizQuestion>> _loadQuestions() async {
    var obj = await getJson();
    Iterable response = json.decode(obj);
    setState(() {
      questions = List<QuizQuestion>.from(
          response.map((model) => QuizQuestion.fromJson(model)));
    });
    return questions;
  }

  Future<String> getJson() async {
    return rootBundle.loadString('assets/QuizQuestionMock.json');
  }
}
