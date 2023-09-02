// part of 'database_bloc.dart';

abstract class DatabaseEvent {}

class GetDatabaseEvent extends DatabaseEvent {}

class AddDatabaseEvent extends DatabaseEvent {
  final String city;

  AddDatabaseEvent(this.city);
}
