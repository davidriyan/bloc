import 'package:belajar_bloc/bloc/counter_bloc.dart';
import 'package:belajar_bloc/bloc/theme_bloc.dart';
import 'package:belajar_bloc/pages/data_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                borderRadius: BorderRadius.circular(20),
                color: Colors.green,
                child: InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {
                    BlocProvider.of<CounterData>(context).kurang();
                  },
                  child: SizedBox(
                    height: size.height / 11,
                    width: size.width / 4.8,
                    child: const Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const DataCounter(),
              Material(
                borderRadius: BorderRadius.circular(20),
                color: Colors.green,
                child: InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {
                    BlocProvider.of<CounterData>(context).tambah();
                  },
                  child: SizedBox(
                    height: size.height / 11,
                    width: size.width / 4.8,
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<ThemeBloc>().changeTheme();
        },
        child: const Icon(Icons.edit),
      ),
    );
  }
}
