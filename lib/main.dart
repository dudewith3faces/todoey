import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// local
import 'package:todoey/screens/tasks_screen.dart';
import 'package:todoey/store.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Store(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
