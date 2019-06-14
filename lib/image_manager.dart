import 'package:flutter/material.dart';

import './images.dart';
import './image_control.dart';

class ImageManager extends StatefulWidget {
  final Map<String,String> startingImage;

  ImageManager({this.startingImage});
  // gets no value passed; has no defaultr
  @override
  State<StatefulWidget> createState() {
    return _ImageManagerState();
  }
}

class _ImageManagerState extends State<ImageManager> {
  List<Map<String, String>> _images = [];

  @override
  void initState() {
    if (widget.startingImage != null) {
          // only add value if starting image is not null
      _images.add(widget.startingImage);
    }
    super.initState();
  }

  void _buttonSetState() {
    setState(() {
      _images.add({'title':'THIS SHIT JUST GOT ADDED WHOOO', 'image':'assets/dark_image.jpg'});
    });
  }

  void _deleteProduct(int index){
    setState((){
      _images.removeAt(index);
    }
    );
  }

  @override
  void didUpdateWidget(ImageManager oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ImageControl(_buttonSetState),
        ),
        Expanded(
          child: Images(_images, deleteProduct : _deleteProduct),
        ),
      ],
    );
  }
}
