import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getData() async {
    Response response =
        await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
    // print(response.body);
    Map data = jsonDecode(response.body);
    print(data);
    print(data['userId']);
  }

  @override
  void initState() {
    super.initState();
    getData();
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
