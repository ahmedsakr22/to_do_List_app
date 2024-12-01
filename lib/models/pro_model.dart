import 'package:flutter/material.dart';

class Model extends ChangeNotifier {
  List<String> tasks = [];
  int currentindex = 0;
  void changingOfTabs(int index) {
    currentindex = index;
    notifyListeners();
  }

  void addTask(String task) {
    tasks.add(task);
    notifyListeners();
  }

  void deleteTask(String task) {
    tasks.remove(task);
    notifyListeners();
  }
}
