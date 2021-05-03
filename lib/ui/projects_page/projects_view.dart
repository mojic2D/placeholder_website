import 'package:flutter/material.dart';
import 'package:placeholder_website/ui/housekeeping/housekeeping_simulator.dart';

class ProjectsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        height: size.height * 0.8,
        width: size.width * 0.6,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Color.fromRGBO(245, 245, 245, 1),
          border: Border.all(width: 1.0, color: Colors.black),
        ),
        child: Row(
          children: [
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
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: HousekeepingSimulator(),
            ),
          ],
        ),
      ),
    );
  }
}
