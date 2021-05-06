import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:placeholder_website/ui/projects_page/ProjectListTileVertical.dart';
import 'package:placeholder_website/ui/projects_page/projects_tech_icon.dart';

class HousekeepingListTile extends ProjectListTileVertical {
  HousekeepingListTile()
      : super(
          projectName: 'HOUSEKEEPING',
          poweredByIcons: [
            ProjectsTechIcon(
              icon: Image.asset(
                'assets/images/flutter-image.png',
              ),
            ),
            ProjectsTechIcon(
              icon: Icon(FontAwesome5.java,color: const Color(0xFF5382a1)),
            ),
            ProjectsTechIcon(
              icon: Icon(FontAwesome5.php,color: const Color(0xFF8993be)),
            ),
            ProjectsTechIcon(
              icon: Image.asset(
                'assets/images/firebase-image.png',
              ),
            ),
          ],
          forPlatformsIcons: const [
            ProjectsTechIcon(icon: Icon(FontAwesome5.windows,color: Color.fromRGBO(0, 161, 241,1),)),
            ProjectsTechIcon(icon: Icon(FontAwesome5.android,color: const Color(0xFF3DDC84))),
          ],
        );
}
