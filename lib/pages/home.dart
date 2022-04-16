import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as Map;
    print(data);

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
