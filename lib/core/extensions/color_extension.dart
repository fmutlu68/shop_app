import 'package:flutter/material.dart';

extension ColorStringExtension on String {
  Color get color {
    if (this.startsWith("#")) {
      String colorText = this.replaceAll("#", "");
      String hexcolor = "0xff$colorText";
      return Color(int.parse(hexcolor));
    }
    return Colors.transparent;
  }
}
