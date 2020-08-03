import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  /*
   * here we should make the variable final as its a stateless widget. 
   * and that class is marked with @immutable. 
   * and as changing this variable will not re render the app, so it should 
   * not be changes and thus should be made final. 
   */
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 25,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

/**
 * text widget by default takes the width of the text inside it. 
 * now, we enclose it in a container. Container allows us a variety of 
 * spacing and alignment features.
 * so, we provide the container with a width also, now the Text doesnt take the
 * width of the text and takes the width of the parent. so, now it gets 
 * centered.
 * 
 * width=double.infinity allows the container to get the max width it can get.
 * 
 * there is also a concept similar to box model - but here we include margin 
 * inside the container. 
 */
