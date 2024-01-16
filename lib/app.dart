import 'package:belajar_bloc/bloc/theme_bloc.dart';
import 'package:belajar_bloc/pages/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, bool>(
      bloc: context.read<ThemeBloc>(),
      builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: state
              ? ThemeData.light(useMaterial3: false)
              : ThemeData.dark(useMaterial3: false),
          home: const HomePage(),
        );
      },
    );
  }
}
