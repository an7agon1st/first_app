import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './pages/product.dart';

class Images extends StatelessWidget {
  // map is equivalent to a dictionary in python
  //Map<'ValueType for Key', 'ValueType for value'>
  final List<Map<String, String>> images;

  final Function deleteProduct;

  Images(this.images, {this.deleteProduct});

  Widget _buildImageItem(BuildContext context, int index) {
    //context: theme info and all that
    // index: index of the item being built
    return Card(
      color: Color.fromRGBO(242, 230, 255, 1.00),
      child: Column(
        children: <Widget>[
          Image.asset(images[index]['image']),
          Text(images[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Details'),
                onPressed: () => Navigator.push<bool>(
                        // within <this> we tell flutter what value will be returned when the page is popped
                        // pushes new page on top of pages stack
                        context,
                        // passes context containing the current page info and such
                        MaterialPageRoute(
                            // handles page route navigation
                            builder: (BuildContext context) {
                              //pass context with initializing product page
                      return ProductPage(
                          images[index]['title'], images[index]['image']);
                    })
                        // passes context containing the current page info and such
                        // MaterialPageRoute(
                        //   // handles page route navigation
                        //   builder: (BuildContext context) => ProductPage(
                        //       images[index]['title'], images[index]['image']),
                        //   //pass context with initializing product page
                        // ),
                        ).then((bool value) {
                      // then is a future method which listens when a page is popped
                      //and a value is returned which is caught in the arguemt of ()
                      if (value) {
                        deleteProduct(index);
                      }
                    }),
              ),
              //button to implement page navigation
            ],
          )
          // acceses that index item of the list
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //conditionally rendering content
    Widget conditionallyRendered;
    if (images.length == 0) {
      conditionallyRendered =
          Center(child: Text("Add Image, click that fucking button"));
    } else {
      conditionallyRendered = ListView.builder(
        //builder renders content as needed on the screen
        itemBuilder: _buildImageItem,
        // reference to the function. Executed by flutter

        //how many items to build in total to estimate total scroll length
        itemCount: images.length,
      );
    }
    return conditionallyRendered;
  }
}
