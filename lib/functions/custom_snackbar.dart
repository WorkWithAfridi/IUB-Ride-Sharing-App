import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/app_theme.dart';

showCustomSnackbar(String title, String message) {
  Get.snackbar(
    "_",
    "_",
    borderRadius: 5,
    borderWidth: 1,
    borderColor: customBlack,
    snackPosition: SnackPosition.BOTTOM,
    margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
    duration: Duration(seconds: 5),
    titleText: Text(
      title,
      style: getMarkerFontStyle.copyWith(
        color: customWhite,
        fontSize: 20,
      ),
    ),
    messageText: Text(
      message,
      style: getDefaultFontStyle.copyWith(
        color: customWhite,
      ),
    ),
  );
}