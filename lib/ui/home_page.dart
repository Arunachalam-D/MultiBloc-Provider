import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multibloc_provider/counter_bloc/counter_bloc.dart';

import '../color_bloc/color_bloc.dart';
import '../color_bloc/color_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Multi-Bloc App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<ColorBloc,ColorState>(builder: (context,state){
            return  Container(
              color: state.color,
              height: 40,
              width: 150,
            );
          }),
          const SizedBox(height: 40,),
          BlocBuilder<CounterBloc,CounterState>(builder: (context,state){
            return  Text(state.counter.toString(),style: const TextStyle(fontSize: 40),);
          }),

          const SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(onPressed: (){
                context.read<CounterBloc>().add(CounterDecrementEvent());
                context.read<ColorBloc>().add(CounterDecrementEvent());
              },child:const Icon(Icons.remove),),
              const SizedBox(width: 40,),
              FloatingActionButton(onPressed: (){
                context.read<CounterBloc>().add(CounterIncrementEvent());
                context.read<ColorBloc>().add(CounterIncrementEvent());
              },child:const Icon(Icons.add),),
            ],
          )
        ],
      ),
    );
  }
}
