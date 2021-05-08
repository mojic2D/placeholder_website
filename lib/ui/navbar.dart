import 'package:flutter/material.dart';
import 'package:placeholder_website/bloc/main_bloc.dart';
import 'package:provider/provider.dart';

class Navbar extends StatelessWidget {
  static const String ime = 'Dragoljub Mojić';
  static const String projekti = 'Projekti';
  static const String kontakt = 'Kontaktiraj me';
  static const String dasedesi = 'Download CV';

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              '${Navbar.ime}',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30),
            ),
            Row(
              children: <Widget>[
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(0, 0, 0, 0.0)),
                  ),
                  onPressed: () {
                    Provider.of<MainBloc>(context, listen: false)
                        .model
                        .setCurrentView('PROJECTS');
                  },
                  child: Text(
                    "${Navbar.projekti}",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(0, 0, 0, 0.0)),
                  ),
                  onPressed: () {
                    Provider.of<MainBloc>(context, listen: false)
                        .model
                        .setCurrentView('CONTACT');
                  },
                  child: Text(
                    "${Navbar.kontakt}",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  color: Colors.pink,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  onPressed: () {},
                  child: Text(
                    "${Navbar.dasedesi}",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(children: <Widget>[
          Text(
            "${Navbar.ime}",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(0, 0, 0, 0.0)),
                  ),
                  onPressed: () {
                    Provider.of<MainBloc>(context, listen: false)
                        .model
                        .setCurrentView('PROJECTS');
                  },
                  child: Text(
                    "${Navbar.projekti}",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(0, 0, 0, 0.0)),
                  ),
                  onPressed: () {
                    Provider.of<MainBloc>(context, listen: false)
                        .model
                        .setCurrentView('CONTACT');
                  },
                  child: Text(
                    "${Navbar.kontakt}",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  color: Colors.pink,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  onPressed: () {},
                  child: Text(
                    "${Navbar.dasedesi}",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
