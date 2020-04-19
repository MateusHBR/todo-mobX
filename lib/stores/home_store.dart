import 'package:mobx/mobx.dart';
import 'package:todo_mobx/stores/todo_store.dart';
part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  // _HomeStoreBase() {
  //   autorun((_) {
  //     print(newTodoTitle);
  //   });
  // }

  @observable
  String newTodoTitle = '';

  @action
  setNewTodoTitle(value) => newTodoTitle = value;

  @observable
  bool isEmpty = false;

  @action
  toggleEmpty() => newTodoTitle.isEmpty ? isEmpty = false : isEmpty = true;

  ObservableList<TodoStore> todoList = ObservableList<TodoStore>();

  @action
  void addTodo() {
    if (newTodoTitle.isNotEmpty) {
      todoList.add(
        TodoStore(newTodoTitle),
      );
    }
    newTodoTitle = '';
    isEmpty = false;
  }
}
