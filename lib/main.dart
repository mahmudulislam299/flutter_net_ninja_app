/// Stateful Widgets
///
/// initState()
/// - called only once when widget is created
/// - Subscribe to streams or any object that could change our widget data
///
/// Build()
/// - Builds the widget tree
/// - A build is triggered every time we use setState()
///
/// Dispose()
/// -When the widget / state object is removed

import 'package:flutter/material.dart';
import 'package:net_ninja_app/pages/choose_location.dart';
import 'package:net_ninja_app/pages/loading.dart';
import 'package:net_ninja_app/pages/home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
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
