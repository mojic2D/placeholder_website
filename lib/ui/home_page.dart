import 'package:flutter/material.dart';
import 'package:placeholder_website/ui/housekeeping/ui/room_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          decoration: _border(),
          child: Text('PLACEHOLDER DEV'),
          height: 75,
          //color: Colors.lightBlueAccent,
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Container(
            decoration: _border(),
            //color: Colors.lightBlueAccent,
            //height:600,
            child: Row(

              //mainAxisAlignment: MainAxisAlignment.start,
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  decoration: _border(),
                  child: Text('PLACEHOLDER DEV'),
                  height: 75,
                  //color: Colors.lightBlueAccent,
                ),
                Container(
                  decoration: _border(),
                  child: Center(child: Text('PLACEHOLDER DEV')),
                  height: 500,
                  //color: Colors.lightBlueAccent,
                ),
                Stack(

                    children: <Widget>[
                      Center(child: RoomList(),),


                    ]
                ),
                
              ],
            ),
          ),
        ])
      ],
    );
  }

  _border(){
    return BoxDecoration(
      color: Colors.lightBlueAccent,
      border: Border(
        top: BorderSide(width: 4.0, color: Colors.black),
        left: BorderSide(width: 4.0, color: Colors.black),
        right: BorderSide(width: 4.0, color: Colors.black),
        bottom: BorderSide(width: 4.0, color: Colors.black),
      ),
    );
  }
}
