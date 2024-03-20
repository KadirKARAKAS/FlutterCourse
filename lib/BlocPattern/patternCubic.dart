import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:setstate1/BlocPattern/mathRepo.dart';

class PatternCubit extends Cubit<int> {
  PatternCubit() : super(0);

  var mrepo = MathRepo();

  void toplama(String alinanSayi1, String alinanSayi2) {
    emit(mrepo.toplamaYap(alinanSayi1, alinanSayi2));
  }

  void carpma(String alinanSayi1, String alinanSayi2) {
    emit(mrepo.carpmaYap(alinanSayi1, alinanSayi2));
  }
}
