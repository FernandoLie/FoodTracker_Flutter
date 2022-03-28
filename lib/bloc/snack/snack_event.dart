part of 'snack_bloc.dart';

@immutable
abstract class SnackEvent {}

class SnackEventLoad extends SnackEvent {
  final Map snacklist;
  SnackEventLoad(this.snacklist);
}
