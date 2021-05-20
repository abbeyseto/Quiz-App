import 'package:flutter/material.dart';
import 'qiuz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      "questionText": 'What\'s your favorite color?',
      "answers": [
        {"text": "Blue", "score": 5},
        {"text": "Red", "score": 1},
        {"text": "Green", "score": 4}
      ]
    },
    {
      "questionText": 'What\'s your favorite animal?',
      "answers": [
        {"text": "Lion", "score": 2},
        {"text": "Monkey", "score": 3},
        {"text": "Bear", "score": 5}
      ]
    },
    {
      "questionText": 'Who\'s your favorite instructor?',
      "answers": [
        {"text": "James", "score": 2},
        {"text": "Brad", "score": 3},
        {"text": "Max", "score": 1}
      ]
    },
    {
      "questionText": 'Who\'s your favorite Star?',
      "answers": [
        {"text": "James Lowe", "score": 1},
        {"text": "Tiger Woods", "score": 3},
        {"text": "Serena Williams", "score": 5}
      ]
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    print(_totalScore);
  }

  void _reset() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Beatiful Page'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                _questions,
                _answerQuestion,
                _questionIndex,
              )
            : Result(_totalScore, _reset),
      ),
    );
  }
}
