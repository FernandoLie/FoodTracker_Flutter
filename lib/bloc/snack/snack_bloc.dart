import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'snack_event.dart';
part 'snack_state.dart';

class SnackBloc extends Bloc<SnackEvent, SnackState> {
  SnackBloc() : super(SnackInitial()) {
    on<SnackEventLoad>((event, emit) {
      List<Map> newlist = [];
      newlist.addAll(state.snacklist);
      newlist.add(event.snacklist);

      emit(SnackLoaded(newlist));
    });
  }
}
