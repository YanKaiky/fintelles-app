// ignore_for_file: unused_field

import 'package:flutter/material.dart';

class SizesConfig {
  static double? screenWidth;
  static double? screenHeight;
  static double? blockSizeHorizontal;
  static double? blockSizeVertical;

  void init(BuildContext context) {
    final size = MediaQuery.of(context).size;

    screenWidth = size.width;
    screenHeight = size.height;
    blockSizeHorizontal = screenHeight! / 100;
    blockSizeVertical = screenWidth! / 100;
  }
}
