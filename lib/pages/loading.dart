import 'package:flutter/material.dart';
import 'package:net_ninja_app/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = 'loading';

  void setupWorldTime() async {
    WorldTime instance =
        WorldTime(location: 'Dhaka', flag: 'bangladesh.png', url: 'Asia/Dhaka');
    await instance.getTime();
    print(instance.time);
    setState(() {
      time = instance.time;
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
    print('check print');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text('Loading Page'),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Text(
        time,
        style: const TextStyle(
          backgroundColor: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      )),
    );
  }
}
