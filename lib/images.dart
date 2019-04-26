import 'package:flutter/material.dart';

// the card has been imported to the another file for easier handling
//since the card itself doesnt change, its been put into a stateless widget
class Images extends StatelessWidget {
  final List<String> images; //creates a list like in main (_images)
  //final list because the its a stateless widget
  Images(
      this.images); //contructor which stores the arguments in the images list
  @override // override build method
  Widget build(BuildContext context) {
    return ListView(
      //scrollable widget
      //since _products conatins multiple widgets, we put that in a column with the children property
      children: images
          .map(
            //maps product elements into a list of cards
            (element) => Card(
                  color: Color.fromRGBO(242, 230, 255, 1.00),
                  //element is the element in the product list
                  // card which holds all the widgets together
                  child: Column(
                    // sets widgets in a column
                    children: <Widget>[
                      //list of widgets to add in a column
                      Image.asset('assets/dark_image.jpg'),
                      //assets listed in pubspec.yaml file
                      //added images specified there under assets tag
                      Text(element)
                    ],
                  ),
                ),
          )
          .toList(),
    );
  }
}
