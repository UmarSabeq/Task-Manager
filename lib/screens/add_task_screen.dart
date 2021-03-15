import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:TaskManager/models/task_data.dart';
class AddTaskScreen extends StatefulWidget {

  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20)
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Text(
              'Add Your Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.teal,
                fontSize: 30,
                fontWeight: FontWeight.w700
              ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center, 
                onChanged: (newText){

                  newTaskTitle = newText;
                  
                  print('NewTaskTistle: ' +newTaskTitle);
                  setState(() {
                  });

                },        
              ),
              SizedBox(height: 20),
              FlatButton(
                onPressed: (){
                  Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
                  Navigator.pop(context);
                },
                color: Colors.teal ,
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                  
                )
                ),

        ],),
      ),
    );
  }
}