import 'package:flutter/material.dart';

import '../constant.dart';

class counterModel extends ChangeNotifier {
  int sayaciOku() {
    return sayac;
  }

  void countIncrease() {
    sayac += 1;
    notifyListeners();
  }

  void countReduce() {
    sayac -= 1;
    notifyListeners();
  }
}
