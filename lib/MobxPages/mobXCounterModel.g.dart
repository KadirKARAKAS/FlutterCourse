// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobXCounterModel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$mobXModel on mobXCounterModel, Store {
  late final _$sayac2Atom =
      Atom(name: 'mobXCounterModel.sayac2', context: context);

  @override
  int get sayac2 {
    _$sayac2Atom.reportRead();
    return super.sayac2;
  }

  @override
  set sayac2(int value) {
    _$sayac2Atom.reportWrite(value, super.sayac2, () {
      super.sayac2 = value;
    });
  }

  late final _$mobXCounterModelActionController =
      ActionController(name: 'mobXCounterModel', context: context);

  @override
  void counterUp() {
    final _$actionInfo = _$mobXCounterModelActionController.startAction(
        name: 'mobXCounterModel.counterUp');
    try {
      return super.counterUp();
    } finally {
      _$mobXCounterModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void counterDown() {
    final _$actionInfo = _$mobXCounterModelActionController.startAction(
        name: 'mobXCounterModel.counterDown');
    try {
      return super.counterDown();
    } finally {
      _$mobXCounterModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
sayac2: ${sayac2}
    ''';
  }
}
