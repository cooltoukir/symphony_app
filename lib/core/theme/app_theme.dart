import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/colors_class.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: ColorsClass.lightPrimaryColor,
    colorScheme: ColorScheme.light(
      primary: ColorsClass.lightPrimaryColor,
      secondary: ColorsClass.secondaryColor,
    ),
    scaffoldBackgroundColor: ColorsClass.lightPrimaryColor,
    textTheme: TextTheme(
      labelLarge: TextStyle(color: ColorsClass.darkPrimaryColor),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: ColorsClass.lightPrimaryColor,
      systemOverlayStyle: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: ColorsClass.whiteColor,
        statusBarIconBrightness: Brightness.dark,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorsClass.whiteColor,
        foregroundColor: ColorsClass.darkPrimaryColor,
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: ColorsClass.darkPrimaryColor,
    colorScheme: ColorScheme.dark(primary: ColorsClass.darkPrimaryColor),
    scaffoldBackgroundColor: ColorsClass.darkPrimaryColor,
    textTheme: TextTheme(labelLarge: TextStyle(color: ColorsClass.whiteColor)),
    appBarTheme: AppBarTheme(
      backgroundColor: ColorsClass.darkPrimaryColor,
      systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: ColorsClass.whiteColor,
        statusBarIconBrightness: Brightness.dark,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorsClass.grey600,
        foregroundColor: ColorsClass.whiteColor,
      ),
    ),
  );
}
