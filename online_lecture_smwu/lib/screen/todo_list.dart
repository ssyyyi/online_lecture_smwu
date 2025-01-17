import 'package:flutter/material.dart';

class TodoModel {
  String name;
  bool complete;

  TodoModel({required this.name, this.complete = false});
}

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  TextEditingController controller = TextEditingController();
  List<TodoModel> todoList = [];

  @override
  void initState() {
    controller.addListener(
      () {
        setState(() {});
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void addTodo() {
    setState(() {
      todoList.add(TodoModel(name: controller.text));
      controller.clear();
    });
  }

  void removeTodo(int index){
    setState(() {
      todoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Todo-List"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: controller,
                      decoration: const InputDecoration(
                          hintText: "할 일을 입력해주세요",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          )),
                    ),
                  ),
                  TextButton(
                    onPressed: addTodo,
                    child: Text(
                      "등록",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: todoList.length,
                itemBuilder: (context, index) {
                  final todo = todoList[index];
                  return Row(
                    children: [
                      Checkbox(
                        value: todo.complete,
                        onChanged: (value) {
                          todo.complete = value!;
                          setState(() {});
                        },
                      ),
                      Expanded(
                        child: Text(
                          todo.name,
                        ),
                      ),
                      IconButton(onPressed: () => removeTodo(index), icon: const Icon(Icons.delete),alignment: Alignment.centerRight,)
                    ],
                  );
                }, separatorBuilder: (BuildContext context, int index) {
                  return const Divider(
                    color: Colors.grey,
                    thickness: 1,
                  );
              },
              )
            ],
          ),
        ));
  }
}
