import 'package:flutter/material.dart';
import 'package:placeholder_website/ui/housekeeping/housekeeping_simulator.dart';
import 'package:placeholder_website/ui/housekeeping_project_view.dart';

class ProjectsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double viewWidth;
    if(size.width>800 && size.width<1170){
      viewWidth=size.width*0.6;
    }else if(size.width>800){
      viewWidth=size.width*0.7;
    }else{
      viewWidth=size.width;
    }

    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        height: size.height * 0.8,
        width: viewWidth ,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Color.fromRGBO(245, 245, 245, 1),
          border: Border.all(width: 1.0, color: Colors.black),
        ),
        child: SingleChildScrollView(
          child: HousekeepingProjectView(),
        ),
      ),
    );
  }

}
