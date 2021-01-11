import 'package:flutter/material.dart';
import 'dart:math';
import './Result.dart';
import 'Quiz.dart';

// void main() {
//   runApp(MyApp());
// }
// ou utliser cette methode
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'In what continent tunisia does exsit ?',
      'answer': [
        {'text': 'Africa', 'score': 5},
        {'text': 'Europe', 'socre': 0},
        {'text': 'Asie', 'socre': 0},
        {'text': 'Austriale', 'socre': 0},
      ],
    },
    {
      'questionText': 'In what continent Egypt does exsit ?',
      'answer': [
        {'text': 'America', 'score': 0},
        {'text': 'Europe', 'socre': 0},
        {'text': 'Africa', 'score': 5},
        {'text': 'Austriale', 'socre': 0},
      ],
    },
    {
      'questionText': 'How many country in the world ?',
      'answer': [
        {'text': '293', 'score': 0},
        {'text': '194', 'score': 0},
        {'text': '255', 'score': 0},
        {'text': '195', 'score': 5},
      ],
    },
    {
      'questionText': 'How many continent in the world ?',
      'answer': [
        {'text': '5', 'score': 0},
        {'text': '6', 'score': 0},
        {'text': '7', 'score': 5},
        {'text': '8', 'score': 0},
      ],
    },
    {
      'questionText': 'How many Country in the continent of North  America ?',
      'answer': [
        {'text': '25', 'score': 0},
        {'text': '26', 'score': 0},
        {'text': '23', 'score': 5},
        {'text': '77', 'score': 0},
      ],
    },
    {
      'questionText': 'How many Country in the continent of South America ?',
      'answer': [
        {'text': '15', 'score': 0},
        {'text': '16', 'score': 0},
        {'text': '13', 'score': 5},
        {'text': '14', 'score': 0},
      ],
    },
    {
      'questionText': 'How many Country in the continent of Europa ?',
      'answer': [
        {'text': '45', 'score': 0},
        {'text': '46', 'score': 0},
        {'text': '53', 'score': 0},
        {'text': '44', 'score': 5},
      ],
    },
    {
      'questionText': 'How many Country in the continent of Australia ?',
      'answer': [
        {'text': '5', 'score': 0},
        {'text': '6', 'score': 0},
        {'text': '3', 'score': 5},
        {'text': '4', 'score': 0},
      ],
    },
    {
      'questionText': 'How many Country in the continent of Asia ?',
      'answer': [
        {'text': '48', 'score': 5},
        {'text': '46', 'score': 0},
        {'text': '43', 'score': 0},
        {'text': '44', 'score': 0},
      ],
    },
    {
      'questionText': 'Name of Capitale of Turkya ?',
      'answer': [
        {'text': 'Istanbul', 'score': 5},
        {'text': 'Ankara', 'score': 0},
        {'text': 'Antalya', 'score': 0},
        {'text': 'Mulga', 'score': 0},
      ],
    },
  ];
  var _questionIndex = 0;
  var _ttscore = 0;
  void _reset() {
    setState(() {
      _ttscore = 0;
      _questionIndex = 0;
    });
  }

  void _answerQuestion(int score) {
    _ttscore += score;

    if (_questionIndex < _questions.length) {
      print("you can do more !");
    } else {
      print("great you did it  ");
    }
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              ' General Culture ',
              style:
                  TextStyle(letterSpacing: 4, fontSize: 28, color: Colors.grey),
            ),
          ),
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                resultscore: _ttscore,
              )
            : Result(_ttscore, _reset),
      ),
    );
  }
}
