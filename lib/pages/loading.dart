import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text('Loading Page'),
        centerTitle: true,
      ),
      body: SafeArea(child: Text('Loading Screen')),
    );
  }
}
