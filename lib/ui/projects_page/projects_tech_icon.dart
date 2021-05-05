import 'package:flutter/material.dart';

class ProjectsTechIcon extends StatelessWidget {
  const ProjectsTechIcon({@required this.imgUrl,Key key}) : super(key: key);

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[700], width: 0.75),
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        child: ClipRRect(
          borderRadius:  BorderRadius.all(Radius.circular(50)),
          child: Image.network(
            imgUrl,
            width: 25,
            height: 25,
          ),
        ),
      ),
    );
  }
}
