import 'package:flutter/material.dart';
import 'package:placeholder_website/languages/language.dart';
import 'package:placeholder_website/model/projects_model.dart';
import 'package:placeholder_website/ui/summoner_viewer/summoner_viewer_simulator.dart';
import 'package:placeholder_website/ui/summoner_viewer/ui/home_page.dart';
import 'package:provider/provider.dart';


class SummonerViewerProjectView extends StatelessWidget {
  const SummonerViewerProjectView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Language lang=Provider.of<ProjectsModel>(context,listen:false).currentLanguage;
    if (size.width > 1170) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 75,
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    width: 550,
                    child: Column(
                      children: [
                        Text(
                          lang.summonerViewerDescriptionP1,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 25,),
                        Text(
                          lang.summonerViewerDescriptionP2,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    lang.tryDemo
                    ,style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),
                  ),
                  Text(lang.summonerViewerSearchHint,style: TextStyle(color: Colors.white,fontSize: 16)),
                  Icon(Icons.arrow_forward_rounded,size: 80,
                      color:Colors.white),
                ],
              ),

            ),
          ),

           SummonerViewerSimulator(),

        ],
      );
    }
    return Container(
      //width: size.width>1170 ? size.width*0.4 : size.width*0.7,
      child: Column(
        children: [
          Text(
            lang.summonerViewerDescriptionP1,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 10,),
          Text(
            lang.summonerViewerDescriptionP2,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            lang.tryDemo
            ,style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),
          ),
          Text(lang.summonerViewerSearchHint,style: TextStyle(color: Colors.white,fontSize: 25)),
          Icon(Icons.arrow_downward_rounded,size: 80,
              color:Colors.white),
          SummonerViewerSimulator(),



        ],
      ),
    );
  }
}
