import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:placeholder_website/languages/language.dart';
import 'package:placeholder_website/model/projects_model.dart';
import 'package:placeholder_website/ui/housekeeping/models/floors_model.dart';
import 'package:placeholder_website/ui/housekeeping/pojo/room.dart';
import 'package:provider/provider.dart';

class RoomListTile extends StatefulWidget {
  RoomListTile({@required this.roomIndex, @required this.model});

  final FloorsModel model;
  final int roomIndex;
  //final GlobalKey<ScaffoldMessengerState> keyy;

  @override
  _RoomListTileState createState() => _RoomListTileState();
}

class _RoomListTileState extends State<RoomListTile> {
  //bool isClean = false;

  Future<Response> _updateRoomStatus(int roomNumber, String isClean) async {
    var url =
        //'http://25.110.41.176/housekeeping/soba_status.php?json={"soba":$roomNumber,"status":"$isClean"}';//srecko
    'http://25.107.64.34/housekeeping/soba_status.php?json={"soba":$roomNumber,"status":"$isClean"}';//kuca

    return await http.get(Uri.parse(url));
  }

  showAlertDialog(BuildContext context, int roomIndex,Language lang) {
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(lang.confirmationNeeded),
      content: Text("${lang.confirmRoomChange} $roomIndex?"),
      actions: [
        TextButton(
          child: Text(lang.decline),
          onPressed: () {
            Navigator.of(context,rootNavigator: true).pop();
          },
        ),
        TextButton(
          child: Text(lang.accept),
          onPressed: () {
            Navigator.of(context,rootNavigator: true).pop();
            _updateUI('D',lang);
          },
        ),
      ],
    );
    showDialog(
      context: context,
      builder: (context) {
        return alert;
      },
    );
  }

  _updateUI(String status,Language lang){
    setState(() {
      widget.model.selectedFloor
          .roomByNumber(widget.roomIndex.toString())
          .isClean = status == "D" ? true : false;
    });
    if (status != 'N') {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          lang.undoAction,
          textAlign: TextAlign.center,
        ),
        duration: const Duration(seconds: 5),
        action: SnackBarAction(
          label: lang.undo,
          textColor: Colors.orange,
          onPressed: () {
           // widget.keyy.currentState.hideCurrentSnackBar();
            //ScaffoldMessenger.of(context).hideCurrentSnackBar();
            _updateUI('N',lang);
          },
        ),
      ));
    }

  }

  @override
  Widget build(BuildContext context) {
    Room room =
        widget.model.selectedFloor.roomByNumber(widget.roomIndex.toString());
    Language lang=Provider.of<ProjectsModel>(context).currentLanguage;
    return Container(
      height: 85,
      decoration: BoxDecoration(
        border: Border(
          //top: widget.roomIndex==0 ? BorderSide(width: 1.0, color: Colors.grey):BorderSide(width:0.0),
          left: BorderSide(width: 1.0, color: Colors.grey),
          right: BorderSide(width: 1.0, color: Colors.grey),
          bottom: BorderSide(width: 1.0, color: Colors.grey),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(
                //left: BorderSide(width: 1.0, color: Colors.grey),
                right: BorderSide(width: 1.0, color: Colors.grey),
                //bottom: BorderSide(width: 1.0, color: Colors.grey),
              ),
            ),
            width: 85,
            height: 85,
            child: Center(
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  color: room.isClean
                      ? Colors.lightGreen
                      : Colors.deepOrangeAccent,
                  border: Border.all(color: Colors.black38, width: 1.8),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Icon(
                  !room.isClean ? Icons.cleaning_services : Icons.check,
                  size: 40.0,
                ),
              ),
            ),
          ),
          Container(
              child: Text(
            '${lang.room} ${widget.roomIndex}',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16.0,
            ),
          )),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Container(
              height: 45,
              width:90,
              child: ElevatedButton(

                onPressed: room.isClean
                    ? null
                    : () => showAlertDialog(context, widget.roomIndex,lang),
                child: Text(
                  lang.clean,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                    //color: Colors.white,
                  ),
                ),
                style: ButtonStyle(
                  //enableFeedback: false,
                  //animationDuration: Duration.zero,
                  backgroundColor:
                      MaterialStateProperty.all<Color>(room.isClean ? Colors.grey[300]:Colors.blue),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(room.isClean ? Colors.grey: Colors.white),
                ),
              ),
            ),
          ),
          // ElevatedButton(
          //   style: ElevatedButton.styleFrom(
          //     primary: Colors.red, // background
          //     onPrimary: Colors.white, // foreground
          //   ),
          //   onPressed: ()=>_updateRoomStatusUI('N'),
          //   child: Text('Prljavo'),
          // )
        ],
      ),
    );
  }
}
