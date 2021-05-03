import 'dart:js';

import 'package:flutter/material.dart';

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
    return Container(
      height: 40,
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
            _verticalListButton('HOUSEKEEPING'),
            _verticalListButton('DRUGIPROJEKAT'),
            _verticalListButton('TRECI PROJEKAT'),
          ],
        ),
      ),
    );
  }

  Widget _verticalListButton(String projectName) {
    return Padding(
      padding: EdgeInsets.all(4.0),
      child: Column(
        children: [
          ElevatedButton(
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
          Container(
            height:100,
            color: Colors.yellow,
          ),
        ],
      ),
    );
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
