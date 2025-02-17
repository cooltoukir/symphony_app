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
      labelLarge: TextStyle(
        color: ColorsClass.darkPrimaryColor,
        fontFamily: 'Urbanist',
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: ColorsClass.lightPrimaryColor,
      systemOverlayStyle: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: ColorsClass.whiteColor,
        statusBarIconBrightness: Brightness.dark,
      ),
      titleTextStyle: TextStyle(
        fontFamily: 'Urbanist',
        fontWeight: FontWeight.w700,
        fontSize: 18,
        color: ColorsClass.darkPrimaryColor,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorsClass.whiteColor,
        foregroundColor: ColorsClass.darkPrimaryColor,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: ColorsClass.accentColor,
      unselectedItemColor: Colors.grey,
      selectedLabelStyle: TextStyle(
        fontFamily: 'Urbanist',
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      unselectedLabelStyle: TextStyle(
        fontFamily: 'Urbanist',
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: ColorsClass.darkPrimaryColor,
    colorScheme: ColorScheme.dark(primary: ColorsClass.darkPrimaryColor),
    scaffoldBackgroundColor: ColorsClass.darkPrimaryColor,
    textTheme: TextTheme(
      labelLarge: TextStyle(
        color: ColorsClass.whiteColor,
        fontFamily: 'Urbanist',
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: ColorsClass.darkPrimaryColor,
      systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: ColorsClass.whiteColor,
        statusBarIconBrightness: Brightness.dark,
      ),
      titleTextStyle: TextStyle(
        fontFamily: 'Urbanist',
        fontWeight: FontWeight.w700,
        fontSize: 18,
        color: ColorsClass.lightPrimaryColor,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorsClass.grey600,
        foregroundColor: ColorsClass.whiteColor,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: ColorsClass.accentColor,
      unselectedItemColor: Colors.grey,
      selectedLabelStyle: TextStyle(
        fontFamily: 'Urbanist',
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      unselectedLabelStyle: TextStyle(
        fontFamily: 'Urbanist',
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
