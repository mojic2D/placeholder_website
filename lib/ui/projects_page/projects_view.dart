import 'package:flutter/material.dart';
import 'package:placeholder_website/model/projects_model.dart';
import 'package:placeholder_website/ui/housekeeping/housekeeping_simulator.dart';
import 'package:placeholder_website/ui/housekeeping/housekeeping_project_view.dart';
import 'package:placeholder_website/ui/jset_swap/jset_swap_list_tile_horizontal.dart';
import 'package:placeholder_website/ui/jset_swap/jset_swap_project_view.dart';
import 'package:placeholder_website/ui/summoner_viewer/summoner_viewer_project_view.dart';
import 'package:provider/provider.dart';

class ProjectsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double viewWidth;
    if (size.width > 800 && size.width < 1170) {
      viewWidth = size.width * 0.6;
    } else if (size.width > 800) {
      viewWidth = size.width * 0.7;
    } else {
      viewWidth = size.width;
    }

    return Padding(
      padding: EdgeInsets.only(left: size.width > 800 ? 20 : 0.1),
      child: Container(
        height: size.height * 0.8,
        width: viewWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Color.fromRGBO(245, 245, 245, 1),
          border: Border.all(width: 1.0, color: Colors.black),
        ),
        child: SingleChildScrollView(
          child: Consumer<ProjectsModel>(
            builder: (context, projectsModel, child) {
              if(projectsModel.currentProject=='HOUSEKEEPING') {
                return HousekeepingProjectView();
              }
              if(projectsModel.currentProject=='SUMMONER VIEWER'){
                return SummonerViewerProjectView();
              }
              if(projectsModel.currentProject=='PROPERTIES SWAPPER'){
                return JSetSwapProjectView();
              }
              return HousekeepingProjectView();
            },
          ),
        ),
      ),
    );
  }
}
