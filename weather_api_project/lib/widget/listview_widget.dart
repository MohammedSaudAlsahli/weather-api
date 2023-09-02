import 'package:flutter/cupertino.dart';
import 'package:weather_api_project/data/api_model.dart';
import 'package:weather_api_project/widget/citycard_widget.dart';

class CustomListView extends StatelessWidget {
  final List<WeatherApiModel> cityWeather;

  const CustomListView({super.key, required this.cityWeather});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: cityWeather.length,
          itemBuilder: (context, index) {
            return CityCard(weather: cityWeather[index]);
          }),
    );
  }
}
