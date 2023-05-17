import 'package:flutter/material.dart';
class AppTextStyle {
  static AppTextStyle? _instance;
  // Avoid self isntance
  AppTextStyle._();

  static AppTextStyle get instance{
    _instance??=  AppTextStyle._();
    return _instance!;
   }


 TextStyle get textLogo => TextStyle(fontFamily: 'Pacifico', fontSize: 36, color: Colors.black);
 TextStyle get titleLarge => TextStyle(fontFamily: 'OpenSans', fontSize: 36, color: Colors.black, fontWeight: FontWeight.w700);
 TextStyle get titleMedium => TextStyle(fontFamily: 'OpenSans', fontSize: 20, color: Colors.black, fontWeight: FontWeight.w700);
 TextStyle get titleSmall => TextStyle(fontFamily: 'OpenSans', fontSize: 18, color: Colors.black, fontWeight: FontWeight.w300);
 TextStyle get bodyMedium => TextStyle(fontFamily: 'Montserrat', fontSize: 20, color: Colors.black);
 TextStyle get bodySmall => TextStyle(fontFamily: 'Montserrat', fontSize: 18, color: Colors.black, fontWeight: FontWeight.normal);

 TextStyle get textStyleButton => TextStyle(fontFamily: 'Montserrat', fontSize: 15, color: Colors.white, fontWeight: FontWeight.normal);
}

extension AppTextStyleExtension on BuildContext {
  AppTextStyle get textStyle {
    return AppTextStyle.instance;
  }
}

