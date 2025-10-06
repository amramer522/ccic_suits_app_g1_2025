import 'package:flutter_bloc/flutter_bloc.dart';

import 'states.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterStates());

  int count = 0;

  void plus() {
    if (count < 10) {
      count++;
    }
    emit(CounterPlusState());
  }

  void minus() {
    if (count > 1) {
      count--;
    }
    emit(CounterMinusState());
  }
}
