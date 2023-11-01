import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:multibloc_provider/color_bloc/color_state.dart';

import '../counter_bloc/counter_bloc.dart';


class ColorBloc extends Bloc<CounterEvent, ColorState> {
  ColorBloc() : super(ColorInitialState()) {
    on<CounterIncrementEvent>(counterIncrementEvent);
    on<CounterDecrementEvent>(counterDecrementEvent);
  }

  FutureOr<void> counterIncrementEvent(CounterIncrementEvent event, Emitter<ColorState> emit) {
    emit(ColorIncrementedState(Colors.green));
  }

  FutureOr<void> counterDecrementEvent(CounterDecrementEvent event, Emitter<ColorState> emit) {
    emit(ColorDecrementedState(Colors.purple));
  }
}
