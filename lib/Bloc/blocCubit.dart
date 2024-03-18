import 'package:flutter_bloc/flutter_bloc.dart';

class blocCubit extends Cubit<int> {
  blocCubit() : super(0);

  void blockCounterUp() {
    int blockCount = state + 1;
    emit(blockCount);
  }

  void blockCounterDown() {
    int blockCount = state - 1;
    emit(blockCount);
  }
}
