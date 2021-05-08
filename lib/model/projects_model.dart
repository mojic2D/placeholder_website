import 'package:flutter/material.dart';

class ProjectsModel with ChangeNotifier{

  ProjectsModel({this.currentProject,this.currentView});

  String currentProject;
  String currentView;

  void setCurrentProject(String projectName){
    currentProject=projectName;
    notifyListeners();
  }

  void setCurrentView(String viewName){
    print('postavi view');
    currentView=viewName;
    notifyListeners();
    print('currentView=$currentView');
  }

}