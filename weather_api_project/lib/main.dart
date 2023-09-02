import 'package:flutter/material.dart';
import 'package:weather_api_project/data/api.dart';
import 'package:weather_api_project/data/api_model.dart';
import 'package:weather_api_project/screens/weather_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({
    super.key,
  });

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FutureBuilder<WeatherApiModel>(
        future: WeatherApi().getData(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.connectionState == ConnectionState.done) {
            final weather = snapshot.data;
            return WeatherScreen(weather: weather);
          } else {
            return const Text('Error');
          }
        },
      ),
    );
  }
}
