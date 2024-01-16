import 'package:belajar_bloc/bloc/theme_bloc.dart';
import 'package:belajar_bloc/pages/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: context.read<ThemeBloc>(),
      builder: (context, state) {
        return MaterialApp(
          theme: state == true ? ThemeData.light() : ThemeData.dark(),
          debugShowCheckedModeBanner: false,
          home: const HomePage(),
        );
      },
    );
  }
}
