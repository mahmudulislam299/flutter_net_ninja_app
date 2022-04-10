import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: NinjaCard()));
}

class NinjaCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: const Text('PraniSheba ID Card'),
        centerTitle: true,
        backgroundColor: Colors.green,
        elevation: 0, //removing shadow in app bar
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/cow2.jpg'),
                radius: 80,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.grey[500],
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              //for spacing
              height: 10,
            ),
            Text(
              'Mahmudul Islam',
              style: TextStyle(
                color: Colors.grey[900],
                letterSpacing: 2,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              //for spacing
              height: 30,
            ),
            Text(
              'Designation',
              style: TextStyle(
                color: Colors.grey[500],
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              //for spacing
              height: 10,
            ),
            Text(
              'IoT Engineer',
              style: TextStyle(
                color: Colors.grey[900],
                letterSpacing: 2,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              //for spacing
              height: 30,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[900],
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'mahmudulislam299@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 18,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              //for spacing
              height: 30,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.mobile_friendly_sharp,
                  color: Colors.grey[900],
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '01811177722',
                  style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 18,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
