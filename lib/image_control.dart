import 'package:flutter/material.dart';

class ImageControl extends StatelessWidget{

  // the setState wont work here so we pass a funtion from ImageManager, the function which executes 
  //the set state funtion. and then execute the function on pressed

  final Function buttonSetState;

  ImageControl(this.buttonSetState);


  @override
  Widget build(BuildContext context) {
    return RaisedButton(
            color: Theme.of(context).primaryColor,
            onPressed: () {
              buttonSetState();
            },

            child: Text('Add Image'), 
          );
  }
}