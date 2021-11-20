// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fruits_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FruitsViewModel on _FruitsViewModelBase, Store {
  final _$indexAtom = Atom(name: '_FruitsViewModelBase.index');

  @override
  int get index {
    _$indexAtom.reportRead();
    return super.index;
  }

  @override
  set index(int value) {
    _$indexAtom.reportWrite(value, super.index, () {
      super.index = value;
    });
  }

  final _$_FruitsViewModelBaseActionController =
      ActionController(name: '_FruitsViewModelBase');

  @override
  void onNaviBarSelectedIndexChanged(int newIndex) {
    final _$actionInfo = _$_FruitsViewModelBaseActionController.startAction(
        name: '_FruitsViewModelBase.onNaviBarSelectedIndexChanged');
    try {
      return super.onNaviBarSelectedIndexChanged(newIndex);
    } finally {
      _$_FruitsViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
index: ${index}
    ''';
  }
}
