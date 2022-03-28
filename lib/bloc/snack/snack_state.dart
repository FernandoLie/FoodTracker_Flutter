part of 'snack_bloc.dart';

@immutable
abstract class SnackState {
  final List<Map> snacklist;

  const SnackState(this.snacklist);
}

class SnackInitial extends SnackState {
  SnackInitial() : super([]);
}

class SnackLoaded extends SnackState {
  const SnackLoaded(List<Map> snacklist) : super(snacklist);
}
