import 'package:flutter/material.dart';
import 'package:placeholder_website/ui/my_flutter_app_icons.dart';
import 'package:placeholder_website/ui/projects_page/project_list_tile_vertical.dart';
import 'package:placeholder_website/ui/projects_page/projects_tech_icon.dart';

class HousekeepingListTile extends ProjectListTileVertical {
  HousekeepingListTile()
      : super(
          projectName: 'HOUSEKEEPING',
          poweredByIcons: [
            ProjectsTechIcon(
              icon: Image.asset(
                'assets/images/flutter-logo.png',
              ),
            ),
            ProjectsTechIcon(
              icon: Icon(MyFlutterApp.java,color: const Color(0xFFf89820)),
            ),
            ProjectsTechIcon(
              icon: Icon(MyFlutterApp.php,color: const Color(0xFF8993be)),
            ),
            ProjectsTechIcon(
              icon: Image.asset(
                'assets/images/firebase-image.png',
              ),
            ),
          ],
          forPlatformsIcons: const [
            ProjectsTechIcon(icon: Icon(MyFlutterApp.windows,color: Color.fromRGBO(0, 161, 241,1),)),
            ProjectsTechIcon(icon: Icon(MyFlutterApp.android,color: const Color(0xFF3DDC84))),
          ],
       gitProjectName: 'housekeeping_prototype'
        );
}
