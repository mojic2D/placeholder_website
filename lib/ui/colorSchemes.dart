import 'package:flutter/material.dart';

class ColorSchemes{
  static List<Color> setColorScheme(String colorID){
    switch(colorID){
      case 'ONE':
        return [
          Colors.grey[700],
          Colors.blueGrey

        ];
      case 'TWO':
        return[
          Color(0xFF8d8741),
          Color(0xFF659dbd),
          Color(0xFFdaad86),
        ];
      case 'THREE':
        return [
          Color(0xFF61892f),
          Color(0xFF474b4f),
        ];
      case 'FOUR':
        return[
          Color(0xFF46344e),
          Color(0xFF9b786f),
          Color(0xFF9d8d8f),
        ];
    }
    return [
      Color(0xFF8ee4af),
      Color(0xFFedf5e1),
    ];
  }
}