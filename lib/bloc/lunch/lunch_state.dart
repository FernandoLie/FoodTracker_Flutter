part of 'lunch_bloc.dart';

@immutable
abstract class LunchState {
  final List<Map> lunchlist;

  const LunchState(this.lunchlist);
}

class LunchInitial extends LunchState {
  LunchInitial() : super([]);
}

class LunchLoaded extends LunchState {
  const LunchLoaded(List<Map> lunchlist) : super(lunchlist);
}
