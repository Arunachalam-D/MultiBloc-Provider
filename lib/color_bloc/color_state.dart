import 'package:flutter/material.dart';

abstract class ColorState {
  Color color = Colors.redAccent;
  ColorState({required this.color});
}

class ColorInitialState extends ColorState {
  ColorInitialState():super(color: Colors.redAccent);

}

class ColorIncrementedState extends ColorState{
  ColorIncrementedState(Color increasedColor):super(color: increasedColor);
}

class ColorDecrementedState extends ColorState{
  ColorDecrementedState(Color decreasedColor):super(color: decreasedColor);
}
