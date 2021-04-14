import 'package:flutter/material.dart';
import 'package:placeholder_website/ui/housekeeping/ui/room_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: Colors.amberAccent,
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(46),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, -2),
                    blurRadius: 30,
                    color: Colors.black.withOpacity(0.16),
                  ),
                ],
              ),
              child: Text(
                'PLACEHOLDER DEV',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
                //textAlign: TextAlign.center,
              ),
              //height: 75,
              //color: Colors.lightBlueAccent,
            ),
            Container(
              decoration: _border(),
              child: Row(
                children: [
                  Container(
                      color: Colors.amberAccent,
                      height: size.height * 0.8,
                      width: size.width * 0.3,
                      child: ListView(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'HOUSEKEEPING',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'DRUGIPROJEKAT',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'TRECI PROJEKAT',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          )
                        ],
                      )),
                  Flexible(
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse commodo rutrum condimentum. Pellentesque interdum eleifend egestas.\n\n'
                      ' Proin sollicitudin ornare dolor. Proin tincidunt quam ut sollicitudin cursus. Integer auctor, enim vitae tempor imperdiet, dui ante tempor orci, finibus viverra quam justo id purus.'
                      '\n\n Vestibulum tincidunt mollis quam, vel tempus ante tincidunt at. Donec id erat sagittis, auctor ligula non, faucibus nisi. Nunc id sapien a mauris suscipit elementum.\n\n'
                      ' Nam nisi tortor, ultrices eget nibh id, rutrum interdum elit. Pellentesque lectus turpis, imperdiet ut nulla in, volutpat bibendum tortor. \n\n'
                      'Morbi quam dui, maximus nec venenatis ac, convallis ac elit. Donec nec lacus turpis.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Stack(children: [
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
                              onGenerateRoute: (RouteSettings settings) {
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
                  ]),
                  SizedBox(width:50)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _border() {
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
