import 'package:flutter/material.dart';

class AppTheme {
  bool isDarkMode = false;
  static getLightTheme() {
    return ThemeData.light().copyWith(
      primaryColor: customWhite,
      backgroundColor: customWhite,
      appBarTheme: AppBarTheme(backgroundColor: customBlack),
      scaffoldBackgroundColor: customWhite
    );
  }
}

Color primaryColor = Color(0xffFFDB15);
Color customBlack = Color(0xff242526);
Color customWhite = Color(0xffF6F5F8);
Color customRed = Color(0xffE4021B);

TextStyle getDefaultFontStyle = const TextStyle(
  fontFamily: 'Lato',
  fontSize: 13,
  fontWeight: FontWeight.normal,
);

TextStyle getBoldFontStyle = const TextStyle(
  fontFamily: 'UberMoveMedium',
  fontSize: 16,
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
  return const EdgeInsets.symmetric(horizontal: 15);
}
