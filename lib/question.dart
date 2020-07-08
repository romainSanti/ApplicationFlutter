import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Permet de prendre autant de largeur qu'il est possible d'en prendre
      margin: EdgeInsets.all(50),
      child: Text(
        questionText,
        style: TextStyle(color: Colors.red, fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
