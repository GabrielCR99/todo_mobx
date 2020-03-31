import 'package:mobx/mobx.dart';
import 'package:todomobx/stores/todo_store.dart';

part 'list_store.g.dart';

class ListStore = _ListStore with _$ListStore;

abstract class _ListStore with Store {
  @observable
  String newToDoTitle = '';

  @action
  void setNewToDoTitle(String value) => newToDoTitle = value;

  @observable
  bool isIconShowingUp = false;

  @action
  void setIconShowUp() => isIconShowingUp = !isIconShowingUp;

  ObservableList<ToDoStore> toDoList = ObservableList<ToDoStore>();

  @action
  void addToDo() {
    toDoList.insert(0, ToDoStore(newToDoTitle));
    newToDoTitle = '';
  }

  @computed
  bool get isFormValid => newToDoTitle.isNotEmpty;
}
