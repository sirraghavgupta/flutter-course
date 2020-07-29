import 'package:flutter/material.dart';
/*
 * While importing, we need to write the package name, which is flutter here. 
 * and then the file name by /
 * 
 * material.dart is a very important file which provides us with the material 
 * theming, and a lot more classes like the StatelessWidget class here which are 
 * of great use to us. 
 */

void main() {
  /*
   * As main() is the first method to be called in any dart file, it runs here
   * and should contain the code to load our app. 
   * 
   * runApp() a method which actually runs the app.
   * it takes an object of the root widget and then calls the build method of
   * the object and from there it starts building the app and the rendering starts.
   */
  runApp(MyApp());
}

/*
 * this is a short representation in dart for functions which contain only one line.
 * the result of that statement is automatically returned. 
 */
// void main() => runApp(MyApp());

/*
 * a flutter app is just a tree of widgets. the entire app is a widget also.
 * so, we need to create the root widget first. and we are doing that here.  
 * 
 * a widget in flutter is justa dart class with a build method which is compilsory. 
 * when flutter will render the widget, it will call the build method which 
 * will always return a widget also and again flutter calls the build method on 
 * that and the process continues untill we get a basic widget in return which 
 * actually contains some details on how to render pixels on the screen. 
 * 
 * here we are creating our own custom widget, so we need to make a class as 
 * widget is also a special object though. but its not so easy as we need to
 * control the pixels on the screen. But StatelessWidget does that for us by 
 * providing all that functionality. 
 * 
 * now, here we need to implement the build method which takes a param of 
 * BuildContext type and returns a Widget.
 * BuildContext contains some details about the widget like how to position 
 * it on the screen and in the entire app also etc etc. it is provided by flutter
 * itself as its the one which calls the build method. 
 * 
 * its the method which flutter or dart calls in order to build the app and 
 * we return a widget because at the end we need to render a widget only.
 * 
 * now, we return an object of MaterialApp which is provided by the material.dart
 * file. and its the core widget which is going to be rendered first or we can 
 * say its the root widget here. 
 * 
 * MaterialApp() can take a numerous optional parameters, so we use named params
 * here. 
 * 
 * if we want to make a widget, its compulsory to extend either the Stateless or
 * the Stateful widget class. 
 */
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text("Hello Raghav!!"),
    );
  }
}
