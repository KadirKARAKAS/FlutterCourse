import "package:mobx/mobx.dart";

part 'mobXCounterModel.g.dart';

class mobXModel = mobXCounterModel with _$mobXModel;

abstract class mobXCounterModel with Store {
  @observable
  int sayac2 = 0;

  @action
  void counterUp() {
    sayac2 += 1;
  }

  @action
  void counterDown() {
    sayac2 -= 1;
  }
}
