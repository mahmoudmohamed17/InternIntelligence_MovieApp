import 'package:flutter/material.dart';

Color getColorOpacity(Color color, double opacity) {
  int newAlpha = (opacity * 255).toInt(); // تحويل الشفافية إلى نطاق 0-255
  return color.withAlpha(newAlpha); // تحديث اللون الجديد
}