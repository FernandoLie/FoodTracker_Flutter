part of 'breakfast_bloc_bloc.dart';

@immutable
abstract class BreakfastBlocState {
  final List<Map> breakfastlist;

  const BreakfastBlocState(this.breakfastlist);
}

class BreakfastBlocInitial extends BreakfastBlocState {
  BreakfastBlocInitial() : super([]);
}

class BreakfastLoaded extends BreakfastBlocState {
  const BreakfastLoaded(List<Map> breakfastlist) : super(breakfastlist);
}
