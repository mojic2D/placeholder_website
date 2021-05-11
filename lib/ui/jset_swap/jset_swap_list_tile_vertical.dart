import 'package:flutter/material.dart';
import 'package:placeholder_website/ui/my_flutter_app_icons.dart';
import 'package:placeholder_website/ui/projects_page/project_list_tile_vertical.dart';
import 'package:placeholder_website/ui/projects_page/projects_tech_icon.dart';

class JSetSwapListTileVertical extends ProjectListTileVertical {
  JSetSwapListTileVertical()
      : super(
    projectName: 'PROPERTIES SWAPPER',
    forPlatformsIcons: [
      ProjectsTechIcon(
        icon: Image.asset(
          'assets/images/eclipse-logo.png',
        ),
      ),
    ],
    poweredByIcons: [
      ProjectsTechIcon(
        icon: Icon(MyFlutterApp.java,color: const Color(0xFF5382a1)),
      ),
    ],
    gitProjectName: 'JSetSwap',
  );
}