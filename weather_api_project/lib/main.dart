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
