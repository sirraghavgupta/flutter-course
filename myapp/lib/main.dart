import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
      if (_questionIndex < 2) _questionIndex += 1;
    });
    print('Button clicked');
  }

  @override
  Widget build(BuildContext context) {
    // Map comments in the end.
    const questions = [
      {
        'questionText': 'Which is your favourite colour?',
        'answers': ['Orange', 'Red', 'Blue', 'Yellow'],
      },
      {
        'questionText': 'Which is your favourite animal?',
        'answers': ['Rabbit', 'Dog', 'Cat', 'Panda', 'Parrot'],
      },
      {
        'questionText': 'Who is your favourite teacher?',
        'answers': ['didu', 'didu', 'didu'],
      },
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: Column(children: [
        Question(questions[_questionIndex]['questionText']),
        ...(questions[_questionIndex]['answers'] as List<String>)
            .map((answer) => Answer(_answerQuestion, answer))
            .toList()
      ]),
    ));
    /**
     * here the map method is just like the map() in js. it returns an object 
     * of Iterable here but we need a list of widgets here, so we convert it to
     * List by toList(). 
     * then we also need a single List in the Container, so we need to spread the 
     * List by using the spread operator. 
     * Also, the inferred type of answers here is Obejct but we cant run map()
     * on that and we know that its of List type, so, we use the 'as' keyword to
     * tell dart to consider it as of type List. 
     */
  }
}

/**
 * Map  - 
 * map in dart is just like a json object. we can write the form of key value 
 * pairs. we dont need to make a class here, so we are using this syntax of creating an d
 * object and its called a map in dart.
 * 
 * it also auto infers the type of the map like here - List<Map<String, Object>>
 * 
 * we can also use the Map class btw.
 */
