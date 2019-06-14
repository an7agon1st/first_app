import 'package:first_app/pages/manage_products.dart';
import 'package:first_app/pages/products.dart';
import 'package:flutter/material.dart';

// import 'package:flutter/rendering.dart'; // useful for debugging shit on the screen

import './pages/auth.dart';

void main() {
  // debugPaintSizeEnabled = true; // shows arrows around widgets
  // debugPaintPointersEnabled = true;    //shows touch
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.lightBlue[100],
          accentColor: Colors.deepPurple),
      //home: AuthPage(),
      // named routes are added as map entry (dictionaries)
      routes: {
        //named routes' values must be a builder function
        '/admin': (BuildContext context) {
          return ManageProductsPage();
        },
        // '/' is registered to point to home and cannot be used when home is defined
        '/': (BuildContext context) {
          return ProductsPage();
        },
      },
    );
    //widgets catalog https://flutter.dev/docs/development/ui/widgets
  }
}
