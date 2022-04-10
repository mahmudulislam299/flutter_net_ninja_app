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
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('hello world'),
            ElevatedButton(
              onPressed: () {},
              child: const Text('press me!'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                  textStyle: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Container(
              color: Colors.cyan,
              padding: EdgeInsets.all(30),
              child: Text('inside container'),
            ),
          ],
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
