import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/data_provider.dart';

import './Tasks_title.dart';

import '../models/Task.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<DataProvider>(
      builder: (context, dataProvider, child) {
        return ListView.builder(
          itemCount: dataProvider
              .taskCount, //dataProvider.tasks.length, //Provider.of<DataProvider>(context).tasks.length,
          itemBuilder: (BuildContext context, int index) {
            return TaskTitle(
              titleList: dataProvider.getAllTasks[index]
                  .name, //Provider.of<DataProvider>(context).tasks[index].name, //tasks[index].name,
              isChecked: dataProvider.getAllTasks[index]
                  .isDone, //Provider.of<DataProvider>(context).tasks[index].isDone,
            );
          },
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