import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: <Widget>[
          ElevatedButton.icon(
            onPressed: (() {
              Navigator.pushNamed(context, '/location');
            }),
            icon: const Icon(
              Icons.edit_location,
              color: Colors.green,
              size: 30,
            ),
            label: const Text('Edit Location'),
          ),
          ElevatedButton.icon(
            onPressed: (() {
              Navigator.pushNamed(context, '/');
            }),
            icon: const Icon(
              Icons.account_box,
              color: Colors.green,
              size: 30,
            ),
            label: const Text('loading page'),
          )
        ],
      )),
    );
  }
}
