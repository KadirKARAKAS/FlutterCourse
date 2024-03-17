import 'package:flutter/material.dart';

class counterModel extends ChangeNotifier {
  int sayac = 0;

  int sayaciOku() {
    return sayac;
  }
}
