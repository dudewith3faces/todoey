import 'package:flutter/material.dart';

class TaskTileComponent extends StatelessWidget {
  TaskTileComponent({
    @required this.title,
    @required this.isChecked,
    @required this.onChange,
    @required this.onLongPress,
  });
  final String title;
  final bool isChecked;
  final void Function(bool) onChange;
  final void Function() onLongPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPress,
      title: Text(
        title,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        onChanged: onChange,
        value: isChecked,
      ),
    );
  }
}
