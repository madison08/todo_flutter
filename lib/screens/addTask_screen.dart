import 'package:flutter/material.dart';
import 'package:todoapp/constants.dart';

import 'package:provider/provider.dart';
import 'package:todoapp/providers/data_provider.dart';
import '../widgets/myData.dart';

class AddTask extends StatefulWidget {
  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  TextEditingController _taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String task;
    return Container(
      padding: EdgeInsets.all(25.0),
      width: 10.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(25.0),
        ),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 30.0,
          ),
          Container(
            color: Colors.grey,
            width: 60.0,
            height: 3.0,
          ),
          SizedBox(
            height: 30.0,
          ),
          Text(
            'Ajouter une tache',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 25.0,
            ),
          ),
          TextField(
            controller: _taskController,
            // autofocus: true,
            onChanged: (val) {
              // print(val);
              task = val;
              // _taskController.text = val;
            },

            // onSubmitted: () {
            // },
          ),
          SizedBox(
            height: 20.0,
          ),
          GestureDetector(
            onTap: () {
              // print(task);
              print(_taskController.text);
              Provider.of<DataProvider>(context, listen: false)
                  .addTask(_taskController.text);
              Navigator.pop(context);
            },
            child: Container(
              width: double.infinity,
              child: TextButton(
                  onPressed: null,
                  child: Text(
                    'Ajouter',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
