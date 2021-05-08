import 'package:flutter/material.dart';
import 'package:placeholder_website/bloc/main_bloc.dart';
import 'package:provider/provider.dart';

class ProjectListTileHorizontal extends StatelessWidget {
  const ProjectListTileHorizontal({Key key,@required this.projectName,@required this.width}) : super(key: key);

  final String projectName;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4.0),
      child: Container(
        width: width,
        child: ElevatedButton(
          onPressed: () {
            Provider.of<MainBloc>(context,listen: false).model.setCurrentProject(projectName);
          },
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(
                Color.fromRGBO(195, 20, 50, 1.0)),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            overlayColor: MaterialStateProperty.all<Color>(
                Color.fromRGBO(36, 11, 54, 0.9)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(
                    color: Color.fromRGBO(195, 20, 50, 1.0), width: 2.2),
              ),
            ),
          ),
          child: Text('$projectName'),
        ),
      ),
    );
  }
}
