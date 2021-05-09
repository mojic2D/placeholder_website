import 'package:flutter/material.dart';
import 'package:placeholder_website/languages/language.dart';
import 'package:placeholder_website/languages/language_en.dart';

class ProjectsModel with ChangeNotifier{

  ProjectsModel({this.currentProject,this.currentView,this.currentLanguage}){
    if(currentLanguage==null){
      currentLanguage=LanguageEN();
    }
  }

  String currentProject;
  String currentView;
  Language currentLanguage;

  void setCurrentProject(String projectName){
    currentProject=projectName;
    notifyListeners();
  }

  void setCurrentView(String viewName){
    currentView=viewName;
    notifyListeners();
  }

  void setCurrentLanguage(Language language){
    currentLanguage=language;
    notifyListeners();
  }

}