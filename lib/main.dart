import 'package:flutter/material.dart';

import './image_manager.dart';

void main() {
  //main function
  runApp(MyApp()); //builds the app on the screen
}

class MyApp extends StatelessWidget {
  //tells flutter Main class is a widget
  @override // override build method
  Widget build(BuildContext context) {
    //draws the object on the screen
    //CONTEXT: contains themes and extra deets about the app
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(242, 230, 255, 1.00),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(117, 26, 255, 0.9),
          title: Text('My First Fucking App'),
        ),
        body: ImageManager('Start image'),	// from image_manager.dart
      ),
    );
    //return always returns a widget until we return a widget that ships w flutter

    //material app is the core root widget which essentially wraps the whole app together
    //it can be edited to accordingly by passing arguments to it

    //materialapp takes in named arguments
    //home takes in another widget which loads when the app is opened
    //scaffold is the background page

    //Scaffold accept another widget to configure it, namely the appbar creates a bar at the top
    //of the app

    //AppBar takes in a title widget which takes in a text widget which then contains the text
    //to display the top of the app bar

    //after creating a widget we need to mount it to the screen

    //widgets catalog https://flutter.dev/docs/development/ui/widgets
  }
}
