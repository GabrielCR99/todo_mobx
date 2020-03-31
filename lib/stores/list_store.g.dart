// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListStore on _ListStore, Store {
  Computed<bool> _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid)).value;

  final _$newToDoTitleAtom = Atom(name: '_ListStore.newToDoTitle');

  @override
  String get newToDoTitle {
    _$newToDoTitleAtom.context.enforceReadPolicy(_$newToDoTitleAtom);
    _$newToDoTitleAtom.reportObserved();
    return super.newToDoTitle;
  }

  @override
  set newToDoTitle(String value) {
    _$newToDoTitleAtom.context.conditionallyRunInAction(() {
      super.newToDoTitle = value;
      _$newToDoTitleAtom.reportChanged();
    }, _$newToDoTitleAtom, name: '${_$newToDoTitleAtom.name}_set');
  }

  final _$isIconShowingUpAtom = Atom(name: '_ListStore.isIconShowingUp');

  @override
  bool get isIconShowingUp {
    _$isIconShowingUpAtom.context.enforceReadPolicy(_$isIconShowingUpAtom);
    _$isIconShowingUpAtom.reportObserved();
    return super.isIconShowingUp;
  }

  @override
  set isIconShowingUp(bool value) {
    _$isIconShowingUpAtom.context.conditionallyRunInAction(() {
      super.isIconShowingUp = value;
      _$isIconShowingUpAtom.reportChanged();
    }, _$isIconShowingUpAtom, name: '${_$isIconShowingUpAtom.name}_set');
  }

  final _$_ListStoreActionController = ActionController(name: '_ListStore');

  @override
  void setNewToDoTitle(String value) {
    final _$actionInfo = _$_ListStoreActionController.startAction();
    try {
      return super.setNewToDoTitle(value);
    } finally {
      _$_ListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIconShowUp() {
    final _$actionInfo = _$_ListStoreActionController.startAction();
    try {
      return super.setIconShowUp();
    } finally {
      _$_ListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addToDo() {
    final _$actionInfo = _$_ListStoreActionController.startAction();
    try {
      return super.addToDo();
    } finally {
      _$_ListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'newToDoTitle: ${newToDoTitle.toString()},isIconShowingUp: ${isIconShowingUp.toString()},isFormValid: ${isFormValid.toString()}';
    return '{$string}';
  }
}
