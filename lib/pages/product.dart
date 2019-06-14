import 'package:flutter/material.dart';
import 'dart:async';

class ProductPage extends StatelessWidget {
  final String title;
  final String imageUrl;

  ProductPage(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // action to take if the page is exited manually
      onWillPop: (){
        print('Page manually poppped using button');
        Navigator.pop(context, false);
        // manually popping page instead of using future
        return Future.value(false);
        //if true, allows popping, if false, doesnt allow going back
        //if we keep future value true, the app tries to pop the main app page as well and the app crashes
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Product Details'),
        ),
        body: Center(
          child: Column(
            // column is only as wide as its contents hence wrapped in a  center widget
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(imageUrl),
              Container(
                padding: EdgeInsets.all(10.0),
                //color: Theme.of(context).primaryColor,
                child: Text(title),
              ),
              Container(
                child: FlatButton(
                  color: Theme.of(context).accentColor,
                  child: Text('Delete the Image'),
                  onPressed: () {
                    Navigator.pop(context, true);
                    //true is returned to the last page when the page is poped
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
