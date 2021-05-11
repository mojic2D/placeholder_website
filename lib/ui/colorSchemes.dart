import 'package:flutter/material.dart';

class ColorSchemes{
  static List<Color> setColorScheme(String colorID){
    switch(colorID){
      case 'ONE':
        return [
          //Color.fromRGBO(120, 120, 120,0.5),
          Colors.grey[700],
          Colors.blueGrey
          // Color(0xFF5680e9),
          // Color(0xFF84ceeb),
          // Color(0xFF5ab9ea),
          // Color(0xFFc1c8e4),
          // Color(0xFF8860d0),

        ];
      case 'TWO':
        return[
          Color(0xFF8d8741),
          Color(0xFF659dbd),
          Color(0xFFdaad86),
        ];
      case 'THREE':
        return [
          Color(0xFF8ee4af),
          Color(0xFFedf5e1),
        ];
    }
    return [
      Color(0xFF8ee4af),
      Color(0xFFedf5e1),
    ];
  }
}