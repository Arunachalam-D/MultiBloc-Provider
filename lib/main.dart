import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multibloc_provider/counter_bloc/counter_bloc.dart';
import 'package:multibloc_provider/ui/home_page.dart';

import 'color_bloc/color_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return
      MultiBlocProvider(providers: [
        BlocProvider<CounterBloc>(create: (context) => CounterBloc(),),
        BlocProvider<ColorBloc>(create: (context) => ColorBloc(),),
      ],
          child: const MaterialApp(
            title: "Multi-bloc App",
            debugShowCheckedModeBanner: false,
            home: HomePage(),
          ));
  }
}



