import 'package:flutter/material.dart';
import 'package:placeholder_website/bloc/main_bloc.dart';
import 'package:placeholder_website/languages/language.dart';
import 'package:placeholder_website/languages/language_en.dart';
import 'package:placeholder_website/languages/language_srb.dart';
import 'package:placeholder_website/model/projects_model.dart';
import 'package:placeholder_website/ui/colorSchemes.dart';
import 'package:placeholder_website/ui/my_flutter_app_icons.dart';
import 'package:provider/provider.dart';
import 'dart:js' as js;

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ProjectsModel model = Provider.of<MainBloc>(context, listen: false).model;
    Language lang = model.currentLanguage;
    String colorScheme = model.colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: [
                _buildGithubIcon(),
                Text(
                  '${lang.nameSurname}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 42,
                  ),
                ),
                SizedBox(width: 8.0,),
                _buildColorPicker(context, colorScheme),
              ],
            ),
            Row(
              children: <Widget>[
                _buildProjectsButton(context, lang),
                SizedBox(
                  width: 30,
                ),
                _buildContactButton(context, lang),
                SizedBox(
                  width: 30,
                ),
                _buildCVButton(lang),
                _buildLanguageButtons(context),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ProjectsModel model = Provider.of<MainBloc>(context, listen: false).model;
    Language lang = model.currentLanguage;
    String colorScheme = model.colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(children: <Widget>[
          Row(
            children: [
              _buildGithubIcon(),
              Text(
                "${lang.nameSurname}",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
              ),
              SizedBox(width: 8.0,),
              _buildColorPicker(context, colorScheme),
              _buildLanguageButtons(context),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildProjectsButton(context, lang),
                SizedBox(
                  width: 30,
                ),
                _buildContactButton(context, lang),
                SizedBox(
                  width: 30,
                ),
                _buildCVButton(lang),
              ],
            ),
          )
        ]),
      ),
    );
  }
}

Widget _buildContactButton(BuildContext context, Language lang) {
  return Container(
    height: 50,
    width: 120,
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
      ),
      onPressed: () {
        Provider.of<MainBloc>(context, listen: false)
            .model
            .setCurrentView('CONTACT');
      },
      child: Text(
        "${lang.contactLabel}",
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
    ),
  );
}

Widget _buildProjectsButton(BuildContext context, Language lang) {
  return Container(
    height: 50,
    width: 120,
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all<Color>(Color.fromRGBO(0, 0, 0, 0.0)),
      ),
      onPressed: () {
        Provider.of<MainBloc>(context, listen: false)
            .model
            .setCurrentView('PROJECTS');
      },
      child: Text(
        "${lang.projectsLabel}",
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
    ),
  );
}

MaterialButton _buildCVButton(Language lang) {
  return MaterialButton(
    height: 50,
    color: Colors.pink,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0))),
    onPressed: () {},
    child: Text(
      "${lang.downloadCVLabel}",
      style: TextStyle(color: Colors.white),
    ),
  );
}

DropdownButtonHideUnderline _buildColorPicker(
    BuildContext context, String colorScheme) {
  return DropdownButtonHideUnderline(
    child: DropdownButton<String>(
      value: colorScheme,
      icon: Icon(
        Icons.arrow_downward,
        color: Colors.white,
      ),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w900),
      onChanged: (newValue) => Provider.of<MainBloc>(context, listen: false)
          .model
          .setColorScheme(newValue),
      items: <String>[
        'ONE',
        'TWO',
        'THREE',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 3.0),
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: ColorSchemes.setColorScheme(value),
              ),
            ),
          ),
        );
      }).toList(),
    ),
  );
}

Widget _buildLanguageButtons(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 10.0),
    child: Column(
      children: [
        Container(
          width: 90,
          child: ElevatedButton.icon(
            onPressed: () {
              Provider.of<MainBloc>(context, listen: false)
                  .model
                  .setCurrentLanguage(LanguageEN());
            },
            icon: Icon(Icons.language),
            label: Text('ENG'),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.transparent),
            ),
          ),
        ),
        Container(
          width: 90,
          child: ElevatedButton.icon(
            onPressed: () {
              Provider.of<MainBloc>(context, listen: false)
                  .model
                  .setCurrentLanguage(LanguageSRB());
            },
            icon: Icon(Icons.language),
            label: Text('SRB'),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.transparent),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _buildGithubIcon(){
  return IconButton(
    icon: Icon(MyFlutterApp.github,),
    tooltip: 'Github',
    onPressed: () {
      js.context.callMethod('open', ['https://github.com/mojic2d']);
    },
  );
}
