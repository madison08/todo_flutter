import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/data_provider.dart';

import './Tasks_title.dart';

import '../models/Task.dart';

class TaskList extends StatelessWidget {
  List<Task> tasks = [
    Task(name: 'Prier'),
    Task(name: 'Mediter'),
    Task(name: 'Prier'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Provider.of<DataProvider>(context).tasks.length,
      itemBuilder: (BuildContext context, int index) {
        return TaskTitle(
          titleList: Provider.of<DataProvider>(context)
              .tasks[index]
              .name, //tasks[index].name,
          isChecked: Provider.of<DataProvider>(context).tasks[index].isDone,
        );
      },
    );
  }
}



// Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         TaskTitle(),
//         TaskTitle(),
//         TaskTitle(),
//       ],
//     );
//   }