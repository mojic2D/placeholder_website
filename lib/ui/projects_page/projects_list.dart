import 'package:flutter/material.dart';
import 'package:placeholder_website/ui/housekeeping/housekeeping_list_tile.dart';
import 'package:placeholder_website/ui/housekeeping/housekeeping_list_tile_horizontal.dart';
import 'package:placeholder_website/ui/jset_swap/jset_swap_list_tile_horizontal.dart';
import 'package:placeholder_website/ui/jset_swap/jset_swap_list_tile_vertical.dart';
import 'package:placeholder_website/ui/summoner_viewer/summoner_viewer_list_tile.dart';
import 'package:placeholder_website/ui/summoner_viewer/summoner_viewer_list_tile_horizontal.dart';

class ProjectsList extends StatelessWidget {
  ProjectsList({@required this.horizontal});

  final bool horizontal;

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    if (horizontal) {
      return _buildHorizontalList();
    }
    return _buildVerticalList(size);
  }

  Widget _buildHorizontalList() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Color.fromRGBO(245, 245, 245, 1),
          border: Border.all(width: 1.0, color: Colors.black),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              HousekeepingListTileHorizontal(),
              SummonerViewerListTileHorizontal(),
              JSetSwapListTileHorizontal(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVerticalList(Size size) {
    return Container(
      height: size.height * 0.8,
      width: 250,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 15,color: Colors.white),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: ListView(
          children: [
            HousekeepingListTile(),
            SummonerViewerListTile(),
            JSetSwapListTileVertical(),
          ],
        ),
      ),
    );
  }

}
