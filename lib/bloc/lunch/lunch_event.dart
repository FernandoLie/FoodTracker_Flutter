part of 'lunch_bloc.dart';

@immutable
abstract class LunchEvent {}

class LunchEventLoad extends LunchEvent {
  final Map lunchlist;
  LunchEventLoad(this.lunchlist);
}
