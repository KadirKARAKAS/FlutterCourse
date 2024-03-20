import 'package:flutter_bloc/flutter_bloc.dart';

class PatternCubit extends Cubit<int> {
  PatternCubit() : super(0);

  void toplama(String alinanSayi1, String alinanSayi2) {
    int sayi1 = int.parse(alinanSayi1);
    int sayi2 = int.parse(alinanSayi2);
    int total = sayi1 + sayi2;
    emit(total);
  }

  void carpma(String alinanSayi1, String alinanSayi2) {
    int sayi1 = int.parse(alinanSayi1);
    int sayi2 = int.parse(alinanSayi2);
    int total = sayi1 * sayi2;
    emit(total);
  }
}
