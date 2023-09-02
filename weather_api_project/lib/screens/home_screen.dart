import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:weather_api_project/bloc/database_bloc/database_bloc.dart';
import 'package:weather_api_project/bloc/database_bloc/database_event.dart';
import 'package:weather_api_project/bloc/database_bloc/database_state.dart';
import 'package:weather_api_project/widget/listview_widget.dart';

class HomeScreen extends StatelessWidget {
  final TextEditingController? controller;

  const HomeScreen({super.key, this.controller});
  @override
  Widget build(BuildContext context) {
    context.read<DatabaseBloc>().add(GetDatabaseEvent());
    return Scaffold(
        backgroundColor: const Color(0xff2d3340),
        body: SafeArea(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Search',
                  hintStyle: GoogleFonts.rubik(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                  filled: true,
                  fillColor: const Color(0xff2d3340),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
                controller: controller,
                onSubmitted: (value) {
                  context
                      .read<DatabaseBloc>()
                      .add(AddDatabaseEvent(value.toString()));
                },
              ),
              BlocBuilder<DatabaseBloc, DatabaseState>(
                  builder: (context, state) {
                if (state is LoadingState) {
                  return Padding(
                    padding: const EdgeInsets.all(50),
                    child: Center(
                      child: LoadingAnimationWidget.discreteCircle(
                          color: Colors.white,
                          size: 100,
                          secondRingColor: Colors.black,
                          thirdRingColor: Colors.pinkAccent),
                    ),
                  );
                } else if (state is GetDatabaseSuccessedstate) {
                  final weather = state.weatherApiModel ?? [];
                  return CustomListView(
                    cityWeather: weather,
                  );
                } else if (state is AddDatabaseSuccessedstate) {
                  context.read<DatabaseBloc>().add(GetDatabaseEvent());
                } else if (state is FailedState) {
                  return const Text('Error');
                }
                return const SizedBox.shrink();
              }),
            ],
          ),
        ));
  }
}
