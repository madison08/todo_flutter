import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/myData.dart';

class TaskTitle extends StatelessWidget {
  // bool isChecked = true;
  Function checkBoxCallback;
  void changeCheck(bool newValue) {
    // setState(() {
    // isChecked = newValue;
    // });
  }

  String titleList;
  bool isChecked;

  TaskTitle({this.titleList, this.isChecked = false, this.checkBoxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        titleList,
        style: TextStyle(
          decoration:
              isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkBoxCallback,
      ),
    );
  }
}

// class CheckBox extends StatelessWidget {
//   final bool isChecked;
//   final Function changeChecked;

//   CheckBox(this.isChecked, this.changeChecked);

//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       value: isChecked,
//       onChanged: checkBoxCallback,
//     );
//   }
// }
