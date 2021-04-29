import 'package:flutter/material.dart';
import 'package:placeholder_website/ui/housekeeping/ui/room_list.dart';

class HousekeepingSimulator extends StatelessWidget {
  const HousekeepingSimulator({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(30.0),
        ),
        width: 420,
        height: 675,
      ),
      Positioned.fill(
        child: Align(
          alignment: Alignment.center,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Container(
              width: 400,
              height: 640,
              child: Navigator(
                onGenerateRoute:
                    (RouteSettings settings) {
                  return new MaterialPageRoute(
                      builder: (context) {
                        return RoomList();
                      });
                },
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}