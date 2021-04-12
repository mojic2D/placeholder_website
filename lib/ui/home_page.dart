import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          child: Text('PLACEHOLDER DEV'),
          height: 75,
          color: Colors.lightBlueAccent,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [Container(
            color: Colors.lightBlueAccent,
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  child: Text('PLACEHOLDER DEV'),
                  height: 75,
                  color: Colors.lightBlueAccent,
                ),
                Container(
                  child: Text('PLACEHOLDER DEV'),
                  height: 75,
                  color: Colors.lightBlueAccent,
                ),
              ],
            ),
          ),]
        )
      ],
    );
  }
}
