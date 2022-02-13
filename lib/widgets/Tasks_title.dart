import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Priez'),
      trailing: Checkbox(
        value: true,
        onChanged: null,
      ),
    );
  }
}
