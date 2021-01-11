import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(children: [
        Card(
          elevation: 6.0,
          margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
        ),
        Expanded(
          child: RaisedButton(
            color: Colors.pink[300],
            textColor: Colors.white,
            child: Text(
              answerText,
              style: TextStyle(fontSize: 20),
            ),
            onPressed: selectHandler,
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0),
            ),
          ),
        ),
      ]),
    );
  }
}
