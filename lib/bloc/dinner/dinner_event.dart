part of 'dinner_bloc.dart';

@immutable
abstract class DinnerEvent {}

class DinnerEventLoad extends DinnerEvent {
  final Map mapnya;
  DinnerEventLoad(this.mapnya);
}
