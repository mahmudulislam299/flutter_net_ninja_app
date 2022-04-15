import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTime() async {
    // make the response
    Response response =
        await get(Uri.parse('http://worldtimeapi.org/api/timezone/Asia/Dhaka'));
    // print(response.body);
    Map data = jsonDecode(response.body);
    // print(data);

    // get properties from data
    String datetime = data['datetime'];
    String timezone = data['timezone'];
    int unixtime = data['unixtime'];

    // print(' $datetime -- $timezone -- $unixtime');

    // create a DateTime object
    DateTime now = DateTime.parse(datetime);
    print(now);
  }

  @override
  void initState() {
    super.initState();
    getTime();
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
      body: SafeArea(child: Text('Loading Screen')),
    );
  }
}
