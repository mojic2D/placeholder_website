import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:placeholder_website/ui/projects_page/ProjectListTileVertical.dart';
import 'package:placeholder_website/ui/projects_page/projects_tech_icon.dart';

class SummonerViewerListTile extends ProjectListTileVertical {
  SummonerViewerListTile()
      : super(
    projectName: 'SUMMONER VIEWER',
    forPlatformsIcons: [
      ProjectsTechIcon(icon: Icon(FontAwesome5.windows,color: Color.fromRGBO(0, 161, 241,1),)),
      ProjectsTechIcon(icon: Icon(FontAwesome5.android,color: const Color(0xFF3DDC84))),
      ProjectsTechIcon(icon: Icon(FontAwesome5.globe,color: Colors.lightBlueAccent)),
    ],
    poweredByIcons: [
      ProjectsTechIcon(
        icon: Image.asset(
          'assets/images/flutter-image.png',
        ),
      ),
    ],
  );
}