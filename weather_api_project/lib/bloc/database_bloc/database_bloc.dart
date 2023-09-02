import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_api_project/bloc/database_bloc/database_event.dart';
import 'package:weather_api_project/bloc/database_bloc/database_state.dart';
import 'package:weather_api_project/data/api_model.dart';
import 'package:weather_api_project/data/database/supabase_services.dart';

class DatabaseBloc extends Bloc<DatabaseEvent, DatabaseState> {
  DatabaseBloc() : super(DatabaseInitial()) {
    on<GetDatabaseEvent>((event, emit) async {
      emit(LoadingState());
      try {
        final List<WeatherApiModel>? weatherApiModel = await getCities();
        emit(GetDatabaseSuccessedstate(weatherApiModel: weatherApiModel));
      } catch (e) {
        emit(FailedState());
      }
    });

    on<AddDatabaseEvent>((event, emit) async {
      emit(LoadingState());
      try {
        await addCity(event.city);
        emit(AddDatabaseSuccessedstate());
      } catch (e) {
        emit(FailedState());
      }
    });
  }
}
