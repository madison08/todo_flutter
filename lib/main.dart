import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/Tasks_screen.dart';

import './widgets/myData.dart';

import './providers/data_provider.dart';

// import './models/Task.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => DataProvider(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
