import 'package:belajar_bloc/bloc/counter_bloc.dart';
import 'package:belajar_bloc/bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DataCounter extends StatelessWidget {
  const DataCounter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 8,
      width: size.width / 2.2,
      color: Colors.blue,
      child: Center(
          child: MultiBlocListener(
        listeners: [
          //! BlocListener untuk CounterData
          BlocListener<CounterData, int>(
            listener: (context, state) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  duration: Duration(seconds: 1),
                  content: Text('data lebih dari 10'),
                ),
              );
            },
            listenWhen: (previous, current) {
              if (current > 10) {
                return true;
              } else {
                return false;
              }
            },
          ),
          //! bloclistener untuk ThemeBloc
          BlocListener<ThemeBloc, bool>(
            listener: (context, state) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  duration: Duration(seconds: 1),
                  content: Text('Tema gelap aktif'),
                ),
              );
            },
            listenWhen: (previous, current) {
              if (current == false) {
                return true;
              } else {
                return false;
              }
            },
          ),
        ],
        child: BlocBuilder(
          bloc: context.read<CounterData>(),
          builder: (context, state) {
            return Text(
              '$state',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 50, color: Colors.white),
            );
          },
        ),
      )),
    );
  }
}
