import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function changeQuestion;
  final String answerText;

  Answer(this.changeQuestion,this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 10.0,right: 10.0),
      child: RaisedButton(
        color: Colors.limeAccent,
        child: Text(answerText),
        onPressed: changeQuestion,
      ),
    );
  }
}
