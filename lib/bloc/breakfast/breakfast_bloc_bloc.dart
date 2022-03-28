import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'breakfast_bloc_event.dart';
part 'breakfast_bloc_state.dart';

class BreakfastBlocBloc extends Bloc<BreakfastBlocEvent, BreakfastBlocState> {
  BreakfastBlocBloc() : super(BreakfastBlocInitial()) {
    on<BreakfastEvent>(((event, emit) {
      emit(BreakfastLoaded([event.mapnya]));
    }));
  }
}
