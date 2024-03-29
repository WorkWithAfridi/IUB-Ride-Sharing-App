import 'package:flutter/material.dart';

class AppTheme {
  bool isDarkMode = false;
  static getLightTheme() {
    return ThemeData.light().copyWith(
        primaryColor: customWhite,
        backgroundColor: customWhite,
        appBarTheme: AppBarTheme(backgroundColor: Colors.white),
        scaffoldBackgroundColor: customWhite);
  }
}

Color primaryColor = Color(0xffF03B46);
Color customBlack = Color(0xff22282C);
Color customWhite = Color(0xffFFFFFF);
Color customRed = Color(0xffE4021B);

TextStyle getDefaultFontStyle = TextStyle(
  fontFamily: 'Lato',
  color: customBlack,
  fontSize: 13,
  fontWeight: FontWeight.normal,
);

TextStyle getBoldFontStyle = const TextStyle(
  fontFamily: 'UberMoveMedium',
  fontSize: 13,
  fontWeight: FontWeight.w700,
);

TextStyle getMarkerFontStyle = TextStyle(
    fontFamily: 'ParmanentMarker',
    fontSize: 30,
    fontWeight: FontWeight.w700,
    color: primaryColor);

TextStyle getHandWritingFontStyle = TextStyle(
    fontFamily: 'SquarePeg-Regular',
    fontSize: 30,
    fontWeight: FontWeight.w700,
    color: primaryColor);

getGlobalPadding() {
  return const EdgeInsets.symmetric(horizontal: 20, vertical: 5);
}

String appName = "Bananas";
