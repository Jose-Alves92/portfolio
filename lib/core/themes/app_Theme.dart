import 'package:flutter/material.dart';

import '../styles/app_colors.dart';
import '../styles/app_text_style.dart';

class AppTheme {
  static AppTheme? _instance;
  ThemeData  theme = ThemeData();
  AppTheme._();

  static AppTheme? get instance {
    _instance = AppTheme._();
    return _instance;
  }

  ThemeData get themeLight => theme.copyWith(
    colorScheme: theme.colorScheme.copyWith(
      secondary: AppColors.instance.primary,
      background: AppColors.instance.background
    ),
    scaffoldBackgroundColor: AppColors.instance.background,
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: AppColors.instance.background,
      iconTheme: IconThemeData(color: AppColors.instance.black)
    ),
  );
}
