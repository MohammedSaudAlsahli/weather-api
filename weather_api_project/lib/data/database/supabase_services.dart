import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:weather_api_project/data/api.dart';
import 'package:weather_api_project/data/api_model.dart';

Future getCities() async {
  final List citiesList =
      await Supabase.instance.client.from('SavedCity').select("city_name");
  final List<WeatherApiModel> cities = [];
  for (final city in citiesList) {
    cities.add(await getData(city["city_name"]));
  }
  return cities;
}

Future addCity(String name) async {
  await Supabase.instance.client.from("SavedCity").insert({"city_name": name});
}
