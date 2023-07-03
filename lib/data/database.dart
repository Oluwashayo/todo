import 'package:hive/hive.dart';

class ToDoDataBase {
  // reference to the box
  final _myBox = Hive.box("myBox");

  List toDoList = [];

  // Create initial data if this is the first time opening the app

  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Execerise", false],
    ];
  }

  // load the existing data
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update the existing data
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
