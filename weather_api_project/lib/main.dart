import 'package:flutter/material.dart';
import 'package:weather_api_project/bloc/database_bloc/database_bloc.dart';
import 'package:weather_api_project/data/database/supabase_initializer.dart';
import 'package:weather_api_project/screens/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  SupabaseInitializer.supabaseInitialize();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocProvider(
          create: (context) => DatabaseBloc(),
          child: const HomeScreen(),
        ));
  }
}

// FutureBuilder<WeatherApiModel>(
//   future: WeatherApi().getData("Riyadh"),
//   builder: (BuildContext context, AsyncSnapshot snapshot) {
//     if (snapshot.connectionState == ConnectionState.waiting) {
//       return const Center(
//         child: CircularProgressIndicator(),
//       );
//     } else if (snapshot.connectionState == ConnectionState.done) {
//       final weather = snapshot.data;
//       return WeatherScreen(weather: weather);
//     } else {
//       return const Text('Error');
//     }
//   },
// ),
