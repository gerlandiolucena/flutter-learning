import 'package:json_annotation/json_annotation.dart';

part 'QuizQuestions.g.dart';

@JsonSerializable()
class QuizQuestion {
  int id;
  String question;
  List<Answer> answers;
  QuizQuestion(this.id, this.question, this.answers);

  factory QuizQuestion.fromJson(Map<String, dynamic> quizMap) => _$QuizQuestionFromJson(quizMap);

  Map<String, dynamic> toJson() => _$QuizQuestionToJson(this);
}

@JsonSerializable()
class Answer {
  int id;
  String answer;
  Answer(this.id, this.answer);

  factory Answer.fromJson(Map<String, dynamic> quizMap) => _$AnswerFromJson(quizMap);

  Map<String, dynamic> toJson() => _$AnswerToJson(this);
}