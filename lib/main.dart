import 'package:flutter/material.dart';
import 'package:net_ninja_app/pages/choose_location.dart';
import 'package:net_ninja_app/pages/loading.dart';
import 'package:net_ninja_app/pages/home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      // routes like dictionary
      /// '/about'
      /// '/contact'

      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    },
  ));
}
