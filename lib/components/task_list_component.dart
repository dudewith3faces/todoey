import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// local
import 'package:todoey/components/task_tile_component.dart';
import 'package:todoey/store.dart';

class TaskListComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Store>(
      builder: (context, store, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = store.getTasks[index];
            return TaskTileComponent(
              title: task.name,
              isChecked: task.isChecked,
              onChange: (value) {
                store.updateTask(task);
              },
              onLongPress: () => store.deleteTask(task),
            );
          },
          itemCount: store.taskCount,
        );
      },
    );
  }
}
