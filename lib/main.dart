import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

/// Stateless Widget
/// the state of widget cannot change over time
///
/// Stateful widgets
/// the state widget can change over time
///

/// to show a photo from local, create a folder named "asset" in main directory
/// then go to pubspec.yaml file and find "assets:"
/// now write the photo location there
/// like here  "- assets/"

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Adorsho praniSheba app"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Container(
          padding: const EdgeInsets.all(15), // box 30 pixel sob side thke nibe
          margin: const EdgeInsets.all(50),
          // box theke 10 pixel baad thakbe sob side theke
          color: Colors.grey,
          child: Text("hello world"),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            // Add your onPressed code here!
          },
          label: const Text('Click here'),
          icon: const Icon(Icons.thumb_up),
          backgroundColor: Colors.red,
        ));
  }
}
