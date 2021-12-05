import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const apiKey = '06cf9e8e0b42fe631adb3f043ebcdb50';

class NetworkHelper {
  String query;

  NetworkHelper({this.query});

  Future getData() async {
    http.Response response = await http.get(
        'https://api.openweathermap.org/data/2.5/weather?$query&appid=$apiKey&units=metric');

    if (response.statusCode == 200) {
      var decodedData = jsonDecode(response.body);
      return decodedData;
    } else {
      print(response.statusCode);
    }
  }
}
