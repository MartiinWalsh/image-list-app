import 'package:flutter/material.dart';
import 'package:photo_app/src/models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);

  Widget build(context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return buildImage(images[index]);
      },
    );
  }
}

Widget buildImage(ImageModel image) {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.black54,
      ),
    ),
    padding: EdgeInsets.all(20.0),
    margin: EdgeInsets.all(20.0),
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 12.0),
          child: Image.network(image.url),
        ),
        Text(image.title),
      ],
    ),
  );
}
