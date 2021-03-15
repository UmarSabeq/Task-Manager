import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'task.dart';
class TaskData extends ChangeNotifier{
  List <Task> _tasks = [
    
  ];

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }
  
  int get taskCount{
    return _tasks.length;
  }

  void addTask(String newTaskTitle){
    final task = Task(taskName: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void taskUpdate(Task task){
    task.doneIt();
    notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}