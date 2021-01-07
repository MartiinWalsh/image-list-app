import 'package:flutter/material.dart';
import 'package:http/http.dart';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 1;

  fetchImage() {
    get('https://jsonplaceholder.typicode.com/photos/$counter');
  }

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Images'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.plus_one),
          onPressed: fetchImage(),
        ),
      ),
    );
  }
}
