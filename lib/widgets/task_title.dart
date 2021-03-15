import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget {


  final String taskTitle;
  final bool isChecked;
  final checkboxCallback;
  final Function longPressCallback;
  TaskTitle({this.taskTitle , this.isChecked, this.checkboxCallback, this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked? TextDecoration.lineThrough : null,
        ),
        ),
      trailing: Checkbox(
      value: isChecked, 
      onChanged: checkboxCallback,
      activeColor: Colors.teal,
      ),
    );
  }
}





    
