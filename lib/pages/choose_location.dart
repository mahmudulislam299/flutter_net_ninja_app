import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  void getData() async {
    //simulate network request for a username
    String username = await Future.delayed(
      Duration(seconds: 3),
      () {
        // print('mahmud');
        return 'mahmud';
      },
    );

    //simuate network request tor bio of the username

    String bio = await Future.delayed(
      Duration(seconds: 2),
      () {
        // print('IoT engineer');
        return 'IoT Engineer';
      },
    );

    print('$username - $bio');
  }

  @override
  void initState() {
    super.initState();
    print('initState function run');
    getData();
    print('hey there');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Choose Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
          child: ElevatedButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: Text('counter is $counter',
            style: const TextStyle(
              color: Colors.red,
              fontSize: 30,
            )),
      )),
    );
  }
}
