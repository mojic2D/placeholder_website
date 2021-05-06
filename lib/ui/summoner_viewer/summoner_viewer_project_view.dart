import 'package:flutter/material.dart';
import 'package:placeholder_website/ui/summoner_viewer/summoner_viewer_simulator.dart';
import 'package:placeholder_website/ui/summoner_viewer/ui/home_page.dart';


class SummonerViewerProjectView extends StatelessWidget {
  const SummonerViewerProjectView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SummonerViewerSimulator(),
    );
  }
}
