import 'package:flutter/material.dart';
import 'package:weather_api_project/data/api.dart';
import 'package:weather_api_project/data/api_model.dart';
import 'package:weather_api_project/screens/widgets/weather_card.dart';

void main() {
  WeatherApi().getData();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [WeatherCard()],
          ),
        ),
      ),
    );
  }
}
