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

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Ninja app"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          child: Text("hello ninja app working",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              )),
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
