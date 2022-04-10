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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.orange,
                  child: Text('hello'),
                ),
                Text(' world'),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.cyan,
              child: const Text('one'),
            ),
            Container(
              padding: const EdgeInsets.all(30),
              color: Colors.red,
              child: const Text('two'),
            ),
            Container(
              padding: const EdgeInsets.all(60),
              color: Colors.green,
              child: const Text('three'),
            )
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
