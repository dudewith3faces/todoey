import 'dart:collection';

import 'package:flutter/foundation.dart';

// local
import 'package:todoey/models/task.dart';

class Store extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy Milk'),
  ];

  int get taskCount => _tasks.length;

  void addTask(String value) {
    if (value == '' || value == null || value.isEmpty) {
      return;
    }
    _tasks.insert(0, Task(name: value));
    notifyListeners();
  }

  UnmodifiableListView<Task> get getTasks => UnmodifiableListView(_tasks);

  void updateTask(Task task) {
    task.toggleCheck();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
