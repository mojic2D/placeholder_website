import 'package:flutter/material.dart';
import 'package:placeholder_website/ui/summoner_viewer/ui/home_page.dart';

class SummonerViewerSimulator extends StatelessWidget {
  const SummonerViewerSimulator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Stack(children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(30.0),
          ),
          //width: size.width>800?420:210,
          width: 420,
          height: 675,
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Container(
                width: 400,
                height: 640,
                child: Navigator(
                  onGenerateRoute:
                      (RouteSettings settings) {
                    return new MaterialPageRoute(
                        builder: (context) {
                          return HomePage();
                        });
                  },
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
