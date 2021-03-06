
import 'package:flutter/material.dart';
import 'package:placeholder_website/ui/summoner_viewer/ladder/challenger_ladder.dart';
import 'package:placeholder_website/ui/summoner_viewer/summoner_search/search_page.dart';
import 'package:placeholder_website/ui/summoner_viewer/ui/cupertino_scaffold_nav.dart';
import 'package:placeholder_website/ui/summoner_viewer/ui/tab_item.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TabItem _currentTab = TabItem.search;

  Map<TabItem, WidgetBuilder> get widgetBuilders {
    return {
      TabItem.search: (_) => SearchPage.create(context),
      TabItem.ladder: (_) => ChallengerLadder(),
    };
  }

  void _select(TabItem tabItem) {
    setState(() => _currentTab = tabItem);
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoScaffoldNav(
      currentTab: _currentTab,
      onSelectTab: _select,
      widgetBuilders: widgetBuilders,
    );
  }

}
