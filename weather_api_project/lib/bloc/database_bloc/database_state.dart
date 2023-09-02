// part of 'database_bloc.dart';

import 'package:weather_api_project/data/api_model.dart';

abstract class DatabaseState {}

final class DatabaseInitial extends DatabaseState {}

final class GetDatabaseSuccessedstate extends DatabaseState {
  final List<WeatherApiModel>? weatherApiModel;

  GetDatabaseSuccessedstate({required this.weatherApiModel});
}

final class AddDatabaseSuccessedstate extends DatabaseState {}

final class FailedState extends DatabaseState {}

final class LoadingState extends DatabaseState {}
