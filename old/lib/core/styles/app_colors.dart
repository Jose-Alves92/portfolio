import 'package:flutter/material.dart';

class AppColors {
  static AppColors? _instance;
  // Avoid self isntance
  AppColors._();

  static AppColors get instance{
    _instance??=  AppColors._();
    return _instance!;
   }

  Color primary = const Color(0xFF5D63CD);
  Color black = Colors.black;
  Color background = Colors.white;
}


extension AppColorsExtension on BuildContext {
  AppColors get colors {
    return AppColors.instance;
  }
}

  Color primary = const Color(0xFF5D63CD);
  Color black = Colors.black;
  Color background = Colors.white;