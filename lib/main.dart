import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("my app"),
            centerTitle: true,
            backgroundColor: Colors.green,
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
            label: const Text('Approve'),
            icon: const Icon(Icons.thumb_up),
            backgroundColor: Colors.red,
          ))));
}
