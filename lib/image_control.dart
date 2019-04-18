/* The buttong has been made into a separate file here
from yhr image_manager.dart file
*/

import 'package:flutter/material.dart';

class ImageControl extends StatelessWidget{

  // the setState wont work here so we pass a funtion from ImageManager, the function which executes 
  //the set state funtion. and then execute the function on pressed

  final Function buttonSetState;

  ImageControl(this.buttonSetState);


  @override
  Widget build(BuildContext context) {
    return RaisedButton(
            //color: Color.fromRGBO(153, 153, 255, 0.60),
            color: Theme.of(context).primaryColor,
            // uses the swatch for theme data in the MaterialApp widget from main.dart
            //context contains the meta data for the app
            onPressed: () {
              buttonSetState();
            }, //onpressed function for the button
            child: Text('Add Image'), //child text inside the button
          );
  }
}