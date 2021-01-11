import 'package:flutter/material.dart';
import 'Question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  //const quiz({Key key}) : super(key: key);
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;
  final int resultscore;
  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
    @required this.resultscore,
  });
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              height: 150,
              child: Image.asset(
                'assets/images/main.jpg',
                fit: BoxFit.cover,
              )),
          Card(
            elevation: 6.0,
            margin: EdgeInsets.all(5.00),
          ),
          Question(
            questions[questionIndex]['questionText'],
          ),
          ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
              .map((answer) {
            Card(
              elevation: 6.0,
              margin: EdgeInsets.all(5.00),
            );
            return Answer(
                () => answerQuestion(answer['score']), answer['text']);
          }).toList(),
          Card(
            elevation: 6.0,
            margin: EdgeInsets.all(5.00),
          ),
          Text('Score : ${resultscore}',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
                letterSpacing: 4,
                fontWeight: FontWeight.bold,
              )),
        ],
      ),
    );
  }
}
