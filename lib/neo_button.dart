import 'package:flutter/material.dart';

class NeoButton {
  static const Color kSecondaryButtonLightColor = Colors.teal;
  static const Color kBorderColorGreen = Colors.green;
  static const kButtonAnimationDuration = Duration(milliseconds: 300);
  static const double kButtonDepth = 4.0;
  static const double kButtonBorderWidth = 2.0;
}

class ColorUtils {
  static Color getVerticalShadow(Color baseColor) {
    // Your implementation for getting vertical shadow color
    // Example: return baseColor.withOpacity(0.5);
    return baseColor.withOpacity(0.5);
  }

  static Color getHorizontalShadow(Color baseColor) {
    // Your implementation for getting horizontal shadow color
    // Example: return baseColor.withOpacity(0.3);
    return baseColor.withOpacity(0.3);
  }
}
