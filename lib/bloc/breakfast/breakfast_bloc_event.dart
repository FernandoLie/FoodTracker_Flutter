part of 'breakfast_bloc_bloc.dart';

@immutable
abstract class BreakfastBlocEvent {}

class BreakfastEvent extends BreakfastBlocEvent {
  final Map mapnya;
  BreakfastEvent(this.mapnya);
}
