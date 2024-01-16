import 'package:bloc/bloc.dart';

class ThemeBloc extends Cubit<bool> {
  ThemeBloc() : super(true);

  //merubah tema gelap atau terang
  void changeTheme() {
    emit(!state);
  }

  @override
  void onChange(Change<bool> change) {
    super.onChange(change);
    // ignore: avoid_print
    print(change);
  }
}
