import 'package:bloc/bloc.dart';

class CounterData extends Cubit<int> {
  CounterData() : super(0);

  void kurang() {
    emit(state - 1);
  }

  void tambah() {
    emit(state + 1);
  }

  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    // ignore: avoid_print
    print(change);
  }
}
