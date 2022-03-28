import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'lunch_event.dart';
part 'lunch_state.dart';

class LunchBloc extends Bloc<LunchEvent, LunchState> {
  LunchBloc() : super(LunchInitial()) {
    on<LunchEventLoad>((event, emit) {
      List<Map> newlist = [];
      newlist.addAll(state.lunchlist);
      newlist.add(event.lunchlist);
      emit(LunchLoaded(newlist));
    });
  }
}
