import 'package:flutter/material.dart';
import 'package:placeholder_website/bloc/main_bloc.dart';
import 'package:placeholder_website/model/projects_model.dart';
import 'package:placeholder_website/ui/my_flutter_app_icons.dart';
import 'package:provider/provider.dart';
import 'dart:js' as js;

class ProjectListTileVertical extends StatelessWidget {
  const ProjectListTileVertical({
    Key key,
    @required this.projectName,
    @required this.poweredByIcons,
    @required this.forPlatformsIcons,
    @required this.gitProjectName,
  }) : super(key: key);

  final String projectName;
  final List<Widget> poweredByIcons;
  final List<Widget> forPlatformsIcons;
  final String gitProjectName;

  @override
  Widget build(BuildContext context) {
    var color =
        Provider.of<MainBloc>(context, listen: false).model.colorSchemes[0];
    return Padding(
      padding: EdgeInsets.all(4.0),
      child: Column(
        children: [
          Container(
            child: LayoutBuilder(builder: (context, constraints) {
              return InkWell(
                //onHover: (),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: constraints.maxWidth * 0.8,
                      child: ElevatedButton(
                        onPressed: () {
                          Provider.of<ProjectsModel>(context, listen: false)
                              .setCurrentProject(projectName);
                        },
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(color),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          overlayColor:
                              MaterialStateProperty.all<Color>(Colors.grey),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                //topRight: Radius.circular(20.0),
                              ),
                              side: BorderSide(color: Colors.white, width: 2.2),
                            ),
                          ),
                        ),
                        child: Text('  $projectName  '),
                      ),
                    ),
                    _buildGithubIcon(constraints, color,gitProjectName),
                  ],
                ),
              );
            }),
          ),
          Container(
            height: 103,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0)),
              border: Border.all(
                width: 2.2,
                //color: Color.fromRGBO(195, 20, 50, 1.0),
                color: Colors.white,
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Text(
                    'For platforms:',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: forPlatformsIcons,
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Text(
                    'Powered by:',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: poweredByIcons,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _buildGithubIcon(BoxConstraints constraints, Color color, String gitName) {
    return Container(
      width: constraints.maxWidth * 0.2,
      child: ElevatedButton(
        onPressed: () {
          js.context.callMethod('open', ['https://github.com/mojic2d/$gitName']);
        },
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(color),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          overlayColor: MaterialStateProperty.all<Color>(Colors.grey),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                //topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
              side: BorderSide(color: Colors.white, width: 2.2),
            ),
          ),
        ),
        child: Icon(
          MyFlutterApp.github,
        ),
      ),
    );
  }
}
