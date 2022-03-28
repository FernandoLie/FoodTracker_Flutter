import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'dinner_event.dart';
part 'dinner_state.dart';

class DinnerBloc extends Bloc<DinnerEvent, DinnerState> {
  DinnerBloc() : super(DinnerInitial()) {
    on<DinnerEventLoad>((event, emit) {
      List<Map> newlist = [];
      newlist.addAll(state.dinnerlist);
      newlist.add(event.mapnya);

      emit(DinnerLoaded(newlist));
    });
  }
}
