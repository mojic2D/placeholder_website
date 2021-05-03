import 'package:flutter/material.dart';
import 'package:placeholder_website/ui/housekeeping/housekeeping_simulator.dart';

class HousekeepingProjectView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    if (size.width > 1170) {
      return Row(
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
      );
    }
    return Container(
      //width: size.width>1170 ? size.width*0.4 : size.width*0.7,
      child: Column(
        children: [
          Text(
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
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: HousekeepingSimulator(),
          ),
        ],
      ),
    );
  }
}
