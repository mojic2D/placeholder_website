import 'package:flutter/material.dart';

class ProjectsList extends StatelessWidget {
  ProjectsList({@required this.horizontal});

  final bool horizontal;

  @override
  Widget build(BuildContext context) {
    if (horizontal) {
      return _buildHorizontalList();
    }
    return _buildVerticalList();
  }

  Widget _buildHorizontalList() {
    return Container(
      height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'HOUSEKEEPING',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 7,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'DRUGIPROJEKAT',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 7,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'TRECI PROJEKAT',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildVerticalList() {
    return Container(
      height: 500,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Color.fromRGBO(245, 245, 245, 1),
        border: Border.all(width: 1.0, color: Colors.black),
      ),
      child: ListView( children:[
      _horizontalListButton('HOUSEKEEPING'),
      _horizontalListButton('DRUGIPROJEKAT'),
      _horizontalListButton('TRECI PROJEKAT'),
    ],),);
  }

  Widget _horizontalListButton(String projectName) {
    return Padding(
      padding: EdgeInsets.all(4.0),
      child: Container(
        width: 75,
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.blue, width: 2.2),
              ),
            ),
          ),
          child: Text('$projectName'),
        ),
      ),
    );
  }
}
