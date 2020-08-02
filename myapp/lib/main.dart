import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//  ---------- focus -----------
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

// --------- focus -----------
class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      if (questionIndex < 1) questionIndex += 1;
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
        Text(questions[questionIndex]),
        RaisedButton(
          child: Text('Orange'),
          onPressed: answerQuestion,
        ),
        RaisedButton(
          child: Text('Red'),
          onPressed: answerQuestion,
        ),
        RaisedButton(
          child: Text('Yellow'),
          onPressed: answerQuestion,
        ),
        RaisedButton(
          child: Text('Green'),
          onPressed: answerQuestion,
        ),
      ]),
    ));
  }
}

/*
 * DIFFERENCE BETWEEN STATELESS AND STATEFUL WIDGETS -> 
 * stateless widgets have only external input which is passed from the 
 * ctor while creation. they can be rebuilt if the input properties change. 
 * they are just like props in react. 
 * 
 * but stateful components are those who have these input values plus some 
 * their own properties which we call state. they can re run their build method
 * when these internal properties change. this is just like the state in react. 
 * 
 * all the concept looks same to me here like react. 
 * 
 * now, to make a stateful widget, the steps are - 
 * 
 *  1. split the class into 2. keep the old class as it is and shift all 
 *     its contents to a new class which extends State. Now the initial class
 *     will be empty so extend it with StatefulWidget. 
 *  2. add generic type to the State wali new class to connect the 2 classes. 
 *  3. override the createState() method in the StatefulWidget wali class. 
 *     same thing we do with state object in ctor and the useState() hook in react. 
 *  note that, we return an object of State<StatefulWidget> from the createState 
 *  method and our own new class is of type State<StatefulWidget> also. 
 * 
 *  now, we connected the 2 classes. 
 * 
 *  ## why do we keep the build method in State wali class ??
 * - because the widget will be recreated multiple times but the state is 
 *   persistent. so, it remains the same and preserved. so, we separate them. 
 *   PROPER LOGIC NOT CLEAR - SEE LATER. 
 * 
 *  ## we need to use the setState method to update the state. Same reason as 
 *  react that otherwise it will not re-render the widget. 
 *  Whenever setState is called, it calls the build method again in the widget 
 *  where setSatte is called. and then it build the widget again. but it will 
 *  not re render the complete app. it also has an internal 
 *  mechanism which detects what has actually changed and needs to be re rendered. 
 *  just as we have a mechanism in react. so the concepts are same. 
 */
