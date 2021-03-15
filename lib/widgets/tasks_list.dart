import 'package:TaskManager/widgets/task_title.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:TaskManager/models/task_data.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Consumer<TaskData>(
        builder: (context , taskData, child){
          return ListView.builder(itemBuilder: (context , index){
            final task = taskData.tasks[index];
          return TaskTitle(
            taskTitle: task.taskName,
            isChecked: task.isDone,
            checkboxCallback: (checkboxState){
              taskData.taskUpdate(task);
            },
            longPressCallback: (){
              taskData.deleteTask(task);
            },
            );
        },itemCount: taskData.taskCount,
        );
        },
          
          
      )
    );
  }
}