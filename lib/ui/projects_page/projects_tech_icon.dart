import 'package:flutter/material.dart';

class ProjectsTechIcon extends StatelessWidget {
  const ProjectsTechIcon({@required this.icon,this.width, Key key}) : super(key: key);

  final Widget icon;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: width==null?25:width,
        height:25,
        child: icon,

      ),
    );
  }
}
