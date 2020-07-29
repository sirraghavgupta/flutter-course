import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

/*
 * here,we the use of scaffold. its a widget which creates a basic app like theme 
 * for us. Rather we had an ugly look wth just MaterialApp() because here, 
 * every pixel of the screen is controlled by dart. so we need to specify everything.  
 */
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var questions = [
      'Which is your favourite colour?',
      'Which is your favourite animal?',
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        // this is he default AppBar
        title: Text('My First App'),
      ),
      body: Column(children: [
        Text('What is your favourite colour?'),
        RaisedButton(
          child: Text('Orange'),
          onPressed: null,
        ),
        RaisedButton(
          child: Text('Red'),
          onPressed: null,
        ),
        RaisedButton(
          child: Text('Yellow'),
          onPressed: null,
        ),
      ]),
    ));
  }
}
