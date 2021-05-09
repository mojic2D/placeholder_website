import 'package:flutter/material.dart';
import 'package:placeholder_website/bloc/main_bloc.dart';
import 'package:placeholder_website/model/projects_model.dart';
import 'package:provider/provider.dart';

class ProjectListTileVertical extends StatelessWidget {
  const ProjectListTileVertical({
    Key key,
    @required this.projectName,
    @required this.poweredByIcons,
    @required this.forPlatformsIcons,
  }) : super(key: key);

  final String projectName;
  final List<Widget> poweredByIcons;
  final List<Widget> forPlatformsIcons;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4.0),
      child: Column(
        children: [
          InkWell(
            //onHover: (),
            child: Container(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Provider.of<ProjectsModel>(context, listen: false)
                      .setCurrentProject(projectName);
                },
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(
                      Color.fromRGBO(195, 20, 50, 1.0)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  overlayColor: MaterialStateProperty.all<Color>(
                      Color.fromRGBO(36, 11, 54, 0.9)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                      side: BorderSide(color: Colors.white, width: 2.2),
                    ),
                  ),
                ),
                child: Text('$projectName'),
              ),
            ),
          ),
          Container(
            height: 103,
            width: 200,
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
}
