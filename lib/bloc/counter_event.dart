part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class IncrementPressed extends CounterEvent {
  @override
  String toString() {
    return "Increment Button Pressed";
  }
}

class DecrementPressed extends CounterEvent {
  @override
  String toString() {
    return "Decrement Button Pressed";
  }
}
