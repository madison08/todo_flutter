import 'package:flutter/foundation.dart';
import '../models/Task.dart';

class DataProvider with ChangeNotifier {
  List<Task> _tasks = [
    Task(
      name: 'Prier',
      isDone: true,
    ),
    Task(
      name: 'Mediter',
      isDone: true,
    ),
    Task(
      name: 'coder',
      isDone: true,
    ),
  ];

  dynamic get getAllTasks {
    return this._tasks;
  }

  void addTask(String task) {
    Task newTask = Task(name: task);

    this._tasks.add(newTask);
    notifyListeners();

    print(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }
}
