import 'package:flutter/material.dart';

import '../widgets/Tasks_list.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Todo',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '12 Tasks',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: 100.0,
              // color: Colors.white,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.only(
                    top: 30.0, left: 30.0, right: 30.0, bottom: 30.0),
                child: TaskList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
