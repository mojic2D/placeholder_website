import 'package:flutter/material.dart';
import 'package:placeholder_website/bloc/main_bloc.dart';
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
          Container(
            width: 240,
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
          Container(
            height: 102,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0)),
              border: Border.all(width: 2.2, color: Color.fromRGBO(195, 20, 50, 1.0)),
            ),
            child: Column(
              children: [
                Text(
                  'For platforms:',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: forPlatformsIcons,
                ),
                Text(
                  'Powered by:',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
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
