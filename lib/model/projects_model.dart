import 'package:flutter/material.dart';

class ProjectsModel with ChangeNotifier{

  ProjectsModel({this.currentProject});

  String currentProject;

  void setCurrentProject(String projectName){
    currentProject=projectName;
    notifyListeners();
  }

}