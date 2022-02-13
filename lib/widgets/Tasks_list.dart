import 'package:flutter/material.dart';

import './Tasks_title.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTitle(),
        TaskTitle(),
        TaskTitle(),
      ],
    );
  }
}
