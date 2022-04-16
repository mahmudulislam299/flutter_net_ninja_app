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
          child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton.icon(
              onPressed: (() {
                Navigator.pushNamed(context, '/location');
              }),
              icon: const Icon(
                Icons.edit_location,
                // color: Colors.green,
                size: 25,
              ),
              label: const Text('Edit Location', textAlign: TextAlign.center),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  data['location'],
                  style: const TextStyle(
                    fontSize: 28,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              data['time'],
              style: const TextStyle(
                fontSize: 50,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
