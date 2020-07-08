import 'package:flutter/material.dart';
import 'main.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function reset;

  Result({this.totalScore,this.reset});

  String get resultPhrase {
    var resultText = "You did it";
    if (totalScore <= 8) {
      resultText = "tu es mauvais";
    } else if (totalScore <= 25) {
      resultText = "Tu n\'es pas mal";
    } else if (totalScore <= 50) {
      resultText = "Bien ! ";
    } else {
      resultText = "Toi tu aimes les jeux de stratégies ! ";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
         Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: FlatButton(
              child: Text("Redémarrer le quizz !"),
              onPressed: reset,
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
