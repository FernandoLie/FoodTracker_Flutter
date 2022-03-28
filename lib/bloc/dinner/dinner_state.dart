part of 'dinner_bloc.dart';

@immutable
abstract class DinnerState {
  final List<Map> dinnerlist;

  const DinnerState(this.dinnerlist);
}

class DinnerInitial extends DinnerState {
  DinnerInitial() : super([]);
}

class DinnerLoaded extends DinnerState {
  const DinnerLoaded(List<Map> dinnerlist) : super(dinnerlist);
}
