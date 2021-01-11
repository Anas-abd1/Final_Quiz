import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(0, 60, 0, 30),
      child: Center(
        child: Text(
          questionText,
          style: TextStyle(fontSize: 20, letterSpacing: 4, color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
