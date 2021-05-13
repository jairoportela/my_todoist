import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TodoItem {
  final id;
  final String todo;
  final DateTime endTime;
  final List<String> tags;
  final String folderName;

  TodoItem({
    this.folderName,
    @required this.id,
    @required this.todo,
    @required this.endTime,
    @required this.tags,
  });
}

class TodoList with ChangeNotifier {
  final List<TodoItem> _items = [
    TodoItem(
      id: '1',
      endTime: DateTime(2021, 5, 10),
      tags: ['Jairo', 'Andres', 'Portela'],
      todo: 'Renovar Disney Plus',
    ),
    TodoItem(
      id: '2',
      endTime: DateTime(2021, 4, 10),
      tags: ['Programación', 'Flutter', 'Curso', 'Prueba', 'Muchas', 'Cosas'],
      todo: 'Adelantar el curso de Flutter',
      folderName: 'Pruebas',
    ),
    TodoItem(
        id: '3',
        endTime: DateTime(2021, 4, 12),
        tags: ['Programación', 'Flutter', 'Curso', 'Prueba', 'Muchas', 'Cosas'],
        todo: 'Prueba 2',
        folderName: 'Pruebas'),
    TodoItem(
      id: '4',
      endTime: DateTime(2021, 4, 15),
      tags: ['Programación', 'Flutter'],
      todo: 'Prueba 3',
    ),
  ];

  List<TodoItem> get items {
    _items.sort((a, b) => a.endTime.compareTo(b.endTime));

    return [..._items];
  }

  TodoItem findById(String id) {
    return _items.firstWhere((todo) => todo.id == id);
  }

  void addTodoItem(String todo, DateTime endTime, List<String> tags) {
    if ((todo != null || todo != '') && endTime != null) {
      _items.add(
        TodoItem(
          id: DateTime.now().toString(),
          endTime: endTime,
          tags: tags,
          todo: todo,
        ),
      );
      notifyListeners();
    }
  }

  void deleteItem(String id) {
    _items.removeWhere((todoItem) => todoItem.id == id);
  }

  List<TodoItem> get filterInboxItems{
    return _items.where((todo) => todo.folderName==null).toList();
  }
  List<TodoItem> get filterTodayItems{
    return _items.where((todo) => todo.endTime.difference(DateTime.now()).inDays==0);
  }
}
