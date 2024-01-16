import 'package:belajar_bloc/bloc/counter_bloc.dart';
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
      ),
    );
  }
}
