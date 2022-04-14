import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;
  @override
  void initState() {
    super.initState();
    print('initState function run');
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
        child: Text('counter is $counter'),
      )),
    );
  }
}
