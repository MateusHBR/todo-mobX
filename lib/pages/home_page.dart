import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:todo_mobx/components/text_field_home_page.dart';
import 'package:todo_mobx/stores/home_store.dart';

class HomePage extends StatelessWidget {
  final HomeStore homeStore = HomeStore();
  final TextEditingController todoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(
              vertical: size.height * 0.05,
              horizontal: size.width * 0.08,
            ),
            // height: size.height * 0.8,
            // width: size.width * 0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
            ),
            child: Column(
              children: <Widget>[
                Observer(
                  builder: (_) {
                    return TextFieldHomePage(
                      controller: todoController,
                      size: size,
                      onChanged: (value) {
                        homeStore.setNewTodoTitle(value);
                        homeStore.toggleEmpty();
                      },
                      suffixIcon: homeStore.isEmpty
                          ? IconButton(
                              icon: Icon(Icons.add),
                              onPressed: () {
                                homeStore.addTodo();
                                WidgetsBinding.instance.addPostFrameCallback(
                                  (_) => todoController.clear(),
                                );
                              },
                            )
                          : null,
                    );
                  },
                ),
                Container(
                  height: size.height * 0.7,
                  padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.05,
                  ),
                  child: Observer(
                    builder: (_) {
                      return ListView.separated(
                        itemBuilder: (context, index) {
                          var todo = homeStore.todoList[index];
                          return Observer(
                            builder: (_) {
                              return GestureDetector(
                                onTap: todo.toggleDone,
                                child: Container(
                                  height: size.height * 0.05,
                                  padding: EdgeInsets.only(
                                    top: size.height * 0.015,
                                    left: size.width * 0.01,
                                  ),
                                  child: Text(
                                    todo.title,
                                    style: TextStyle(
                                      color: todo.done
                                          ? Colors.grey
                                          : Colors.black,
                                      decoration: todo.done
                                          ? TextDecoration.lineThrough
                                          : null,
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        separatorBuilder: (context, index) => Divider(),
                        itemCount: homeStore.todoList.length,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
