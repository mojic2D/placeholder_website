import 'package:flutter/material.dart';

class JSetSwapProjectView extends StatelessWidget {
  const JSetSwapProjectView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 300,),
        Container(
          child: Text('Bigger description soon to come...',style: TextStyle(
            fontSize: 25,
          ),),
        ),
      ],
    );
  }
}
