part of 'counter_bloc.dart';

abstract class CounterState {
  int counter = 0;
  CounterState({required this.counter});
}

class CounterInitialState extends CounterState {
  CounterInitialState():super(counter: 0);

}

class CounterIncrementedState extends CounterState{
  CounterIncrementedState(int increasedCounter):super(counter: increasedCounter);
}

class CounterDecrementedState extends CounterState{
  CounterDecrementedState(int decreasedCounter):super(counter: decreasedCounter);
}
