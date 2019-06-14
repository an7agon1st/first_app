import 'package:flutter/material.dart';

import './manage_products.dart';

import '../image_manager.dart';

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              // automatically tries to add certain widgets like a second hamburger icon aand shiz, dont need
              title: Text('Choose'),
            ),
            ListTile(
              title: Text('Manage Products'),
              onTap: () {
                // pushing named route registed in main.dart
                Navigator.pushNamed(context, '/admin');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('My First Fucking App'),
      ),
      body: ImageManager(), // from image_manager.dart
    );
  }
}
