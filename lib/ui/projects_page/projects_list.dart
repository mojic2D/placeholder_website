import 'package:flutter/material.dart';
import 'package:placeholder_website/ui/housekeeping/housekeeping_list_tile.dart';
import 'package:placeholder_website/ui/summoner_viewer/summoner_viewer_list_tile.dart';

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
              _horizontalListButton('HOUSEKEEPING'),
              SizedBox(
                height: 7,
              ),
              _horizontalListButton('DRUGIPROJEKAT'),
              SizedBox(
                height: 7,
              ),
              _horizontalListButton('TRECI PROJEKAT'),
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
        borderRadius: BorderRadius.circular(20.0),
        color: Color.fromRGBO(245, 245, 245, 1),
        border: Border.all(width: 1.0, color: Colors.black),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: ListView(
          children: [
            HousekeepingListTile(),
            SummonerViewerListTile(),
          ],
        ),
      ),
    );
  }

  Widget _horizontalListButton(String projectName) {
    return Padding(
      padding: EdgeInsets.all(4.0),
      child: Container(
        width: 150,
        child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(
                Color.fromRGBO(195, 20, 50, 1.0)),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            overlayColor: MaterialStateProperty.all<Color>(
                Color.fromRGBO(36, 11, 54, 0.9)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(
                    color: Color.fromRGBO(195, 20, 50, 1.0), width: 2.2),
              ),
            ),
          ),
          child: Text('$projectName'),
        ),
      ),
    );
  }
}
