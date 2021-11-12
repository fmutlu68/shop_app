// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboard_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$OnboardViewModel on _OnboardViewModelBase, Store {
  Computed<OnboardModel>? _$onboardModelComputed;

  @override
  OnboardModel get onboardModel => (_$onboardModelComputed ??=
          Computed<OnboardModel>(() => super.onboardModel,
              name: '_OnboardViewModelBase.onboardModel'))
      .value;

  final _$indexAtom = Atom(name: '_OnboardViewModelBase.index');

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

  final _$_OnboardViewModelBaseActionController =
      ActionController(name: '_OnboardViewModelBase');

  @override
  void setIndex(int newIndex) {
    final _$actionInfo = _$_OnboardViewModelBaseActionController.startAction(
        name: '_OnboardViewModelBase.setIndex');
    try {
      return super.setIndex(newIndex);
    } finally {
      _$_OnboardViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
index: ${index},
onboardModel: ${onboardModel}
    ''';
  }
}
