

import 'package:flutter/cupertino.dart';

abstract class AppGradients{
  static RadialGradient splashGradient = const RadialGradient(
    center: Alignment.center,
    radius: 1.2,
    colors: [
      Color(0xFF56CCF2),
      Color(0xFF2F80ED),
      Color(0xFF0C496F),
    ],
  );
}

abstract class AppColors{
  static const Color background = Color(0xFF2F80ED);
  static const Color textColor = Color(0xFFFFFFFF);
  static const Color humidityColor = Color(0xFF7FD3FD);
  static const Color maxTemperatureColor = Color(0xFFEF4747);
  static const Color minTemperatureColor = Color(0xFF63A7FD);
  static const Color borderColor = Color(0xFFFFFFFF);
  static const Color hintTextColor = Color(0x7CFFFFFF);
  static const Color iconColor = Color(0xFFFFFFFF);
}