class Task{
  String taskName;
  bool isDone;

  Task({this.isDone = false , this.taskName});
  void doneIt(){
    isDone = !isDone;
  }
}