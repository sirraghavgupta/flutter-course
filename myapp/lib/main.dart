import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      if (_questionIndex < 1) _questionIndex += 1;
    });
    print('Button clicked');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'Which is your favourite colour?',
      'Which is your favourite animal?',
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: Column(children: [
        Text(questions[_questionIndex]),
        RaisedButton(
          child: Text('Orange'),
          onPressed: _answerQuestion,
        ),
        RaisedButton(
          child: Text('Red'),
          onPressed: _answerQuestion,
        ),
        RaisedButton(
          child: Text('Yellow'),
          onPressed: _answerQuestion,
        ),
        RaisedButton(
          child: Text('Green'),
          onPressed: _answerQuestion,
        ),
      ]),
    ));
  }
}

/**
 * here we are seeing private properties in dart - 
 * for that we need to add _ in front of that variable or class everyehere. 
 * where we create that and where we use that also. 
 * 
 * private here means that the class or var can be accessed from within this
 * file only.
 */
