import 'package:TaskManager/widgets/tasks_list.dart';
import 'package:flutter/material.dart';
import 'add_task_screen.dart';
import 'package:provider/provider.dart';
import 'package:TaskManager/models/task_data.dart';

class TasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        child: Icon(Icons.add),
        onPressed: (){
          showModalBottomSheet(context: context, builder: (context) => AddTaskScreen()
          );
        }
        ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 90, left:30, right:30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Icon(Icons.list , size: 35, color: Colors.teal,)
                  ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w700,

                  ),

                  ),

                  Text(
                  '${Provider.of <TaskData>(context).taskCount} Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                  ),
                  
              ],
            ),
          ),
          Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20) , topRight: Radius.circular(20))
                  ),
                  child: TasksList(),
                ),
              ),
        ],
      ),
    );
  }
}



