import 'package:flutter/material.dart';
import 'package:placeholder_website/ui/my_flutter_app_icons.dart';
import 'package:placeholder_website/ui/projects_page/project_list_tile_vertical.dart';
import 'package:placeholder_website/ui/projects_page/projects_tech_icon.dart';

class SummonerViewerListTile extends ProjectListTileVertical {
  SummonerViewerListTile()
      : super(
    projectName: 'SUMMONER VIEWER',
    forPlatformsIcons: [
      ProjectsTechIcon(icon: Icon(MyFlutterApp.windows,color: Color.fromRGBO(0, 161, 241,1),)),
      ProjectsTechIcon(icon: Icon(MyFlutterApp.android,color: const Color(0xFF3DDC84))),
      ProjectsTechIcon(icon: Icon(MyFlutterApp.globe,color: Colors.lightBlueAccent)),

    ],
    poweredByIcons: [
      ProjectsTechIcon(
        icon: Image.asset(
          'assets/images/flutter-image.png',
        ),
      ),
    ],
    gitProjectName: 'summoner_viewer',
  );
}