import 'package:flutter/material.dart';
import 'package:placeholder_website/languages/language.dart';
import 'package:placeholder_website/model/projects_model.dart';
import 'package:placeholder_website/ui/housekeeping/housekeeping_simulator.dart';
import 'package:provider/provider.dart';

class HousekeepingProjectView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Language lang=Provider.of<ProjectsModel>(context,listen:false).currentLanguage;
    if (size.width > 1170) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.end,
                //mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    //width: 550,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          lang.housekeepingDescriptionP1,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 25,),
                        Text(
                          lang.housekeepingDescriptionP2,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 25,),
                  Text(
                    lang.tryDemo
                    ,style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.arrow_forward_rounded,size: 80,
                      color:Colors.white),


                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: HousekeepingSimulator(),
          ),
        ],
      );
    }
    return Container(
      //width: size.width>1170 ? size.width*0.4 : size.width*0.7,
      child: Column(
        children: [
          Text(
            lang.housekeepingDescriptionP1,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 10,),
          Text(
            lang.tryDemo
            ,style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),
          ),
          Icon(Icons.arrow_downward_rounded,size: 80,
              color:Colors.white),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: HousekeepingSimulator(),
          ),
          Text(
            lang.housekeepingDescriptionP2,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 25,
          )

        ],
      ),
    );
  }
}
