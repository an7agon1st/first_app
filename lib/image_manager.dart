import 'package:flutter/material.dart';

import './images.dart';

/*
class MyApp extends StatelessWidget {	
// a stateless widget works with only recieving external data
//once rendered, the page cannot be dynamically changed, hence we use a stateful widget
*/

class ImageManager extends StatefulWidget {
  //state chnages in the state class not the widget class

  final String
      startingImage; //pass data for starting image through a constructor

  ImageManager(this.startingImage);

  @override
  State<StatefulWidget> createState() {
    //creates a state of returned StatefulWidget

    return _ImageManagerState(); //returns the state object which is to be created
  }
}

class _ImageManagerState extends State<ImageManager> {
//ImageManagerState is the widget created dynamically by the
// stateful widget, it extends state and is a part of MyApp
// underscore convention says that ImageManagerState is to only be used by MyApp and connot be extended

  List<String> _images = [];

  @override
  void initState() {
    // code is executed whenever stateful widget is drawn to the screen. Even before the build func
    //it is used to use the properties of the widget class by the state class
    //dont have to call setstate for data change because it runs before build()
    _images.add(widget
        .startingImage); // widget is used because super methods can only be acccessed
        // through the widget class method
    super.initState();
  }

  @override
  void didUpdateWidget(ImageManager oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  } // executed whenevr IMageManager recieves new data

  @override
  Widget build(BuildContext context) {
    //on setState only the buuld method of the widget is executed
    return Column(
      children: [
        Container(
          //color: Color.fromRGBO(200, 2, 2, 40.00),
          margin: EdgeInsets.all(10.0), //adds an inset margin around the button
          child: RaisedButton(
            color: Color.fromRGBO(153, 153, 255, 0.60),
            onPressed: () {
              setState(() {
                //tells flutter to change the state of the app according to the passed fuction
                _images.add(
                    'New Dark image'); // inserts new value to the _images list
              });
            }, //onpressed function for the button
            child: Text('Add Image'), //child text inside the button
          ),
        ),
        Images(_images),
      ],
    );
  }
}
