import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'api_event.dart';
part 'api_state.dart';

class ApiBlocBloc extends Bloc<ApiBlocEvent, ApiBlocState> {
  ApiBlocBloc() : super(ApiBlocInitial()) {
    on<ApiBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
