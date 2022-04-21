import 'package:bnans_iub/routes/routes.dart';
import 'package:bnans_iub/screens/home_screen.dart';
import 'package:bnans_iub/screens/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constants/appTheme.dart';

void main() {
  runApp(const Bnans());
}

class Bnans extends StatelessWidget {
  const Bnans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.getLightTheme(),
      initialRoute: Routes.getSplashScreenRoute,
      getPages: Routes.routes,
    );
  }
}
