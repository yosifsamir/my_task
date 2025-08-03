import 'package:flutter/material.dart';

import 'app_color.dart';
import 'text_theme.dart';

ThemeData lightTheme() {
  return ThemeData(
    fontFamily: 'OpenSans',
    textTheme: textTheme(color: AppColors.balck),
    brightness: Brightness.light,
    primaryColorDark: AppColors.darkPrimaryColor,
    primaryColor: AppColors.lightPrimaryColor,
    scaffoldBackgroundColor: AppColors.lightPrimaryColor,
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(color: AppColors.darkPrimaryColor),
      backgroundColor: AppColors.lightPrimaryColor,
      foregroundColor: AppColors.lightPrimaryColor,
      iconTheme: IconThemeData(color: AppColors.darkPrimaryColor),
    ),
  );
}
