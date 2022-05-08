import 'package:bnans_iub/routes/appRoutes.dart';
import 'package:bnans_iub/screens/homescreen/activeTrips.dart';
import 'package:bnans_iub/screens/onboarding/onboarding_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'constants/appTheme.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await GetStorage.init();
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
