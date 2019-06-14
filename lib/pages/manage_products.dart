import 'package:first_app/pages/create_product.dart';
import 'package:first_app/pages/list_product.dart';
import 'package:flutter/material.dart';

class ManageProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return ManageProductsPage();
                    }),
                  );
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Manage Products'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.create),
                text: 'Create Product',
              ),
              Tab(
                icon: Icon(Icons.list),
                text: 'My Products',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            // dont have to return a new scaffold since they're embedded in the current page
            CreateProduct(),
            ListProduct()
          ],
        ),
      ),
    );
  }
}
