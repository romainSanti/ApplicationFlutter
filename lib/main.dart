import 'package:flutter/material.dart';
import 'package:quizzflutter/quiz.dart';
import 'package:quizzflutter/result.dart';

void main() {
  runApp(QuizzApp());
}

class QuizzApp extends StatefulWidget {
  @override
  _QuizzAppState createState() => _QuizzAppState();
}

class _QuizzAppState extends State<QuizzApp> {
  @override
  final questions = const [
    {
      'questionText': 'What\'s your favorite color ?',
      'answers': [
        {'text':'Black','score' : 1},
        {'text':'Red','score' : 5},
        {'text':'Green','score' : 4},
        {'text':'White','score' : 10}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal ?',
      'answers': [{'text':'Dog','score':10},
        {'text':'Cat','score':10},
        {'text':'Mouse','score':10},
        {'text':'Rabbit','score':10}],
    },
    {
      'questionText': 'What\'s your favorite game ?',
      'answers': [{'text' : 'LOL','score' :9}
      , {'text' : 'DAOC','score' : 1}
      , {'text' : 'ST2','score':100},
        {'text' : 'AoE','score':95}
        ],
    },
  ];

  var questionIndex = 0;
  var totalScore = 0;

  void answerQuestion(int score) {
    totalScore += score;
    setState(() {
      questionIndex = questionIndex + 1;
    });
    if (questionIndex < questions.length) {
      print("We have more questions");
    } else {
      print("We have no more questions");
    }
  }

  void resetTheQuiz(){
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          title: Text(
        "Lapplication de quizz",
      )),
      body: questionIndex < questions.length
          ? Quiz(
              answerQuestion: answerQuestion,
              questionIndex: questionIndex,
              questions: questions,
            )
          : Result(totalScore: totalScore,reset: resetTheQuiz,),
    ));
  }
}
