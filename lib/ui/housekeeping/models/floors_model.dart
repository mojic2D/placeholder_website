

import 'dart:math';

import 'package:placeholder_website/ui/housekeeping/pojo/floor.dart';
import 'package:placeholder_website/ui/housekeeping/pojo/room.dart';

class FloorsModel{
  FloorsModel({this.selectedFloor,this.floorList,}){
      if(selectedFloor==null&&floorList!=null){
        selectedFloor=floorList[0];
      }
  }

  Floor selectedFloor;
  List<Floor> floorList;

  static FloorsModel generisiModel(){

    Random random=new Random();

    List<Floor> tempFloorList=<Floor>[];
    for(int i=1;i<=6;i++){
      List<Room> tempRoomList=<Room>[];
      for(int j=1;j<=16;j++){
        //print(random.nextInt(2));
        tempRoomList.add(Room(number: '$i${j<10?'0$j':'$j'}',isClean:random.nextInt(2)==0?true:false));
      }
      tempFloorList.add(Floor(number:'$i',roomList: tempRoomList ));
    }

    return FloorsModel(selectedFloor: tempFloorList[0],floorList: tempFloorList);
  }

  int indexOfSelectedFloor(){
    for(Floor f in floorList){
          if(f.number==selectedFloor){
            return floorList.indexOf(f);
          }
    }
  }

  bool hasRoomsForCleaning(String floorNumber){
    Floor floor;
    for(Floor f in floorList){
      if(f.number==floorNumber){
        floor=f;
      }
    }

    for(Room r in floor.roomList){
      if(!r.isClean){
        return true;
      }
    }
    return false;
  }

}