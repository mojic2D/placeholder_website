import 'package:flutter/material.dart';
import 'package:placeholder_website/ui/housekeeping/controller/floors_bloc.dart';
import 'package:placeholder_website/ui/housekeeping/models/floors_model.dart';
import 'package:placeholder_website/ui/housekeeping/ui/notification_list.dart';
import 'package:placeholder_website/ui/housekeeping/ui/room_list_tile.dart';

class RoomList extends StatefulWidget {

  //ApiCalls calls = new ApiCalls();



  @override
  _RoomListState createState() => _RoomListState();
}

class _RoomListState extends State<RoomList>{
  FloorsBloc floorsBloc = new FloorsBloc();
  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
  GlobalKey<ScaffoldMessengerState>();

  _changeFloor(int floorIndex){

    setState(() {
      floorsBloc.model.selectedFloor=floorsBloc.model.floorList[floorIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    FloorsModel model = floorsBloc.model;
    return buildScaffoldMessenger(context, model);


  }

  ScaffoldMessenger buildScaffoldMessenger(BuildContext context, FloorsModel model) {
    return ScaffoldMessenger(
              key: scaffoldMessengerKey,
              child: Scaffold(
                  appBar: AppBar(
                    title: Text('HouseKeeping'),
                    actions: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute<void>(
                            builder: (context) => NotificationList(),
                          ));
                        },
                        child: Icon(floorsBloc.showingNotifications.value
                            ? Icons.menu
                            : Icons.notifications),
                      ),
                      ElevatedButton(
                        onPressed: () => floorsBloc.refreshData(),
                        child: Icon(Icons.refresh_sharp),
                      )
                    ],
                  ),
                  body:  Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Container(
                              height: 40,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: model.floorList.length,
                                itemBuilder: (context, index) {
                                  bool hasFloorsForCleaning = model.hasRoomsForCleaning(
                                      model.floorList[index].toString());
                                  return Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Container(
                                      //decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0), border: Border.all(color: Colors.grey,width: 3.5,style: BorderStyle.solid, ),),
                                      width: 100,
                                      //color: Colors.blueGrey,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                          shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(18.0),
                                            side: BorderSide(
                                                color: Colors.blue, width: 2.2),
                                          )),
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  int.parse(model.selectedFloor.number) -
                                                              1 ==
                                                          index
                                                      ? Colors.blue
                                                      : Colors.white),
                                          foregroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  int.parse(model.selectedFloor.number) -
                                                              1 ==
                                                          index
                                                      ? Colors.white
                                                      : Colors.blue),
                                        ),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              SizedBox(
                                                width: 16,
                                              ),
                                              Text(model.floorList[index].toString()),
                                              Icon(
                                                Icons.arrow_drop_down_circle,
                                                color: hasFloorsForCleaning ? Colors.red:Colors.blue,
                                                size: 16,
                                              ),
                                            ]),
                                        onPressed: () => _changeFloor(index),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          Container(
                            child: Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    top: BorderSide(width: 2.0, color: Colors.black54),
                                    // left: BorderSide(width: 4.0, color: Colors.grey),
                                    // right: BorderSide(width: 4.0, color: Colors.grey),
                                    // bottom: BorderSide(width: 1.0, color: Colors.black54),
                                  ),
                                ),
                                child: ListView.builder(
                                  itemCount: model.selectedFloor.roomList.length,
                                  itemBuilder: (context, index) {
                                    return RoomListTile(
                                      //keyy:scaffoldMessengerKey,
                                      model: model,
                                      roomIndex: int.parse(
                                          model.selectedFloor.roomList[index].number),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
            );
  }
}
