import 'dart:convert';
import 'package:weather_api_project/data/api_model.dart';
import 'package:weather_api_project/data/appkey.dart';
import 'package:http/http.dart' as http;

class WeatherApi {
  Future<WeatherApiModel> getData() async {
    final request = await http.get(
      Uri.parse('http://api.weatherapi.com/v1/current.json?$key=bali'),
    );
    final jsonDecode = json.decode(request.body);
    final result = WeatherApiModel.fromJson(jsonDecode);
    return result;
  }
}
