// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStoreBase, Store {
  final _$newTodoTitleAtom = Atom(name: '_HomeStoreBase.newTodoTitle');

  @override
  String get newTodoTitle {
    _$newTodoTitleAtom.context.enforceReadPolicy(_$newTodoTitleAtom);
    _$newTodoTitleAtom.reportObserved();
    return super.newTodoTitle;
  }

  @override
  set newTodoTitle(String value) {
    _$newTodoTitleAtom.context.conditionallyRunInAction(() {
      super.newTodoTitle = value;
      _$newTodoTitleAtom.reportChanged();
    }, _$newTodoTitleAtom, name: '${_$newTodoTitleAtom.name}_set');
  }

  final _$isEmptyAtom = Atom(name: '_HomeStoreBase.isEmpty');

  @override
  bool get isEmpty {
    _$isEmptyAtom.context.enforceReadPolicy(_$isEmptyAtom);
    _$isEmptyAtom.reportObserved();
    return super.isEmpty;
  }

  @override
  set isEmpty(bool value) {
    _$isEmptyAtom.context.conditionallyRunInAction(() {
      super.isEmpty = value;
      _$isEmptyAtom.reportChanged();
    }, _$isEmptyAtom, name: '${_$isEmptyAtom.name}_set');
  }

  final _$_HomeStoreBaseActionController =
      ActionController(name: '_HomeStoreBase');

  @override
  dynamic setNewTodoTitle(dynamic value) {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction();
    try {
      return super.setNewTodoTitle(value);
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic toggleEmpty() {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction();
    try {
      return super.toggleEmpty();
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addTodo() {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction();
    try {
      return super.addTodo();
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'newTodoTitle: ${newTodoTitle.toString()},isEmpty: ${isEmpty.toString()}';
    return '{$string}';
  }
}
