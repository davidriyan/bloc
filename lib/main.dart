import 'package:belajar_bloc/app.dart';
import 'package:belajar_bloc/bloc/counter_bloc.dart';
import 'package:belajar_bloc/bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeBloc(),
        ),
        BlocProvider(
          create: (context) => CounterData(),
        )
      ],
      child: const App(),
    );
  }
}
