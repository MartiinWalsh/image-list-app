import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'models/image_model.dart';
import 'widgets/image_list.dart';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;
  List<ImageModel> images = [];

  void fetchImage() async {
    counter++;
    var response =
        await get('https://jsonplaceholder.typicode.com/photos/$counter');
    var imageModel = ImageModel.fromJson(json.decode(response.body));

    setState(() {
      images.add(imageModel);
    });
  }

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: ImageList(images),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.plus_one),
          onPressed: fetchImage,
        ),
        appBar: AppBar(
          title: Text('Images'),
        ),
      ),
    );
  }
}
