import 'package:flutter/material.dart';
import 'package:placeholder_website/bloc/main_bloc.dart';
import 'package:placeholder_website/ui/my_flutter_app_icons.dart';
import 'package:provider/provider.dart';

class ProjectListTileHorizontal extends StatelessWidget {
  const ProjectListTileHorizontal({Key key,@required this.projectName,@required this.width}) : super(key: key);

  final String projectName;
  final double width;

  @override
  Widget build(BuildContext context) {
    var color=Provider.of<MainBloc>(context,listen: false).model.colorSchemes[0];
    return Padding(
      padding: EdgeInsets.all(4.0),
      child: Container(
        width: width,
        child: Row(
          children: [
            ElevatedButton(
              onPressed: () {
                Provider.of<MainBloc>(context,listen: false).model.setCurrentProject(projectName);
              },
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(color),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                overlayColor: MaterialStateProperty.all<Color>(
                    Colors.grey),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18.0),
                      bottomLeft: Radius.circular(18.0),
                    ),
                    side: BorderSide(color: Colors.white, width: 2.2),
                  ),
              ),),
              child: Text('$projectName'),
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<MainBloc>(context,listen: false).model.setCurrentProject(projectName);
              },
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(color),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                overlayColor: MaterialStateProperty.all<Color>(
                    Colors.grey),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(18.0),
                      bottomRight: Radius.circular(18.0),
                    ),
                    side: BorderSide(color: Colors.white, width: 2.2),
                  ),
                ),),
              child: Icon(
                MyFlutterApp.github,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
