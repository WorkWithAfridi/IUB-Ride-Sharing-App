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
    snackPosition: SnackPosition.TOP,
    margin: EdgeInsets.symmetric(vertical: 70, horizontal: 15),
    duration: Duration(seconds: 3),
    titleText: Text(
      title,
      style: getMarkerFontStyle.copyWith(
        color: customBlack,
        fontSize: 20,
      ),
    ),
    messageText: Text(
      message,
      style: getDefaultFontStyle.copyWith(
        color: customBlack,
      ),
    ),
  );
}
