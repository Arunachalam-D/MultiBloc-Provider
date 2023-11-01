import 'dart:async';

import 'package:bloc/bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitialState()) {
   on<CounterIncrementEvent>(counterIncrementEvent);
   on<CounterDecrementEvent>(counterDecrementEvent);
  }

  FutureOr<void> counterIncrementEvent(CounterIncrementEvent event, Emitter<CounterState> emit) {
    emit(CounterIncrementedState(state.counter+1));
  }

  FutureOr<void> counterDecrementEvent(CounterDecrementEvent event, Emitter<CounterState> emit) {
    emit(CounterDecrementedState(state.counter-1));
  }
}
