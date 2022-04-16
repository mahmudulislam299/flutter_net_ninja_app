import 'package:http/http.dart';
import 'dart:convert'; // for jsondecode
import 'package:intl/intl.dart'; // for managing time

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
      String offset = data['utc_offset'].substring(1, 3);

      // print(' $datetime -- $timezone -- $unixtime -- $offset');

      // create a DateTime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      // print(now);

      // set the time properties
      // time = DateFormat(' kk:mm a ,EEE, yyyy/MM/dd').format(now);
      time = DateFormat('kk:mm a').format(now);
      print(time);
    } catch (e) {
      print('caught error $e');
      time = 'could not get time data';
    }
  }
}
