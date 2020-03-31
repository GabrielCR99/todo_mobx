// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ToDoStore on _ToDoStore, Store {
  final _$isDoneAtom = Atom(name: '_ToDoStore.isDone');

  @override
  bool get isDone {
    _$isDoneAtom.context.enforceReadPolicy(_$isDoneAtom);
    _$isDoneAtom.reportObserved();
    return super.isDone;
  }

  @override
  set isDone(bool value) {
    _$isDoneAtom.context.conditionallyRunInAction(() {
      super.isDone = value;
      _$isDoneAtom.reportChanged();
    }, _$isDoneAtom, name: '${_$isDoneAtom.name}_set');
  }

  final _$_ToDoStoreActionController = ActionController(name: '_ToDoStore');

  @override
  void toggleDone() {
    final _$actionInfo = _$_ToDoStoreActionController.startAction();
    try {
      return super.toggleDone();
    } finally {
      _$_ToDoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'isDone: ${isDone.toString()}';
    return '{$string}';
  }
}
