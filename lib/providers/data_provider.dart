import 'package:flutter/foundation.dart';
import '../models/Task.dart';

class DataProvider with ChangeNotifier {
  List<Task> tasks = [
    Task(
      name: 'Prier',
      isDone: true,
    ),
    Task(
      name: 'Mediter',
      isDone: true,
    ),
    Task(
      name: 'Danser',
      isDone: false,
    ),
  ];

  void fetchAllTasks() {}
}
