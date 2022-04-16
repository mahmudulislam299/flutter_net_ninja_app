import 'package:flutter/material.dart';
import 'package:net_ninja_app/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

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

    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDaytime': instance.isDaytime,
    });

    // print(instance.time);
    // setState(() {
    //   time = instance.time;
    // });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
    print('check print');
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SpinKitWanderingCubes(
          color: Colors.blue,
          size: 50.0,
        ),
      ),
    );
  }
}
