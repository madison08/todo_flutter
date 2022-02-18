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

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String task) {
    Task newTask = Task(name: task);

    this._tasks.add(newTask);
    notifyListeners();

    print(_tasks);
  }

  void deleteTask(Task task) {
    this._tasks.remove(task);
    notifyListeners();
  }

  void checkTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}
