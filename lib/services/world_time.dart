import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String location = ''; // location name for UI
  String time = ''; // the time in that location
  String flag = ''; //url to asset flag icon
  String url = ''; // location url for api endpoint

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    try {
      // make the response
      Response response =
          await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
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

      // set the time properties
      time = datetime;
    } catch (e) {
      print('caught error $e');
      time = 'could not get time data';
    }
  }
}
