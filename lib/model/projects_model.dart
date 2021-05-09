import 'package:flutter/material.dart';
import 'package:placeholder_website/languages/language.dart';
import 'package:placeholder_website/languages/language_en.dart';
import 'package:placeholder_website/ui/colorSchemes.dart';

class ProjectsModel with ChangeNotifier{

  ProjectsModel({this.currentProject,this.currentView,this.currentLanguage,this.colorScheme}){
    if(currentLanguage==null){
      currentLanguage=LanguageEN();
    }
    if(colorSchemes==null&&colorScheme==null){
      colorScheme='ONE';
      colorSchemes=ColorSchemes.setColorScheme(colorScheme);
    }
  }

  String currentProject;
  String currentView;
  Language currentLanguage;
  String colorScheme;
  List<Color> colorSchemes;

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

  void setColorScheme(String color){
    colorScheme=color;
    colorSchemes=ColorSchemes.setColorScheme(color);
    notifyListeners();
  }

}