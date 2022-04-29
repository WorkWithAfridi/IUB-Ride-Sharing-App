import 'package:bnans_iub/constants/app_theme.dart';
import 'package:bnans_iub/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final box = GetStorage();

  @override
  void initState() {
    super.initState();
    triggerSplashScreenEvent();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customBlack,
      body: Container(
        height: Get.height,
        width: Get.width,
        child: Stack(
          children: [
            Container(
              height: Get.height,
              width: Get.width,
              child: Image.asset(
                'assets/images/maps/map (1).jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: Get.height,
              width: Get.width,
              color: Colors.black.withOpacity(.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Bnans",
                    style: getMarkerFontStyle,
                  ),
                  // Text(
                  //   "Powered by\n Independent University, Bangladesh.",
                  //   style: getDefaultFontStyle.copyWith(
                  //     color: Colors.yellow,
                  //     fontSize: 14,
                  //   ),
                  //   textAlign: TextAlign.center,
                  // ),
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "BY \nK Y O T O",
                    style: getHandWritingFontStyle.copyWith(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  triggerSplashScreenEvent() async {
    var isFirstBoot = await box.read("isFirstBoot");

    isFirstBoot = null;
    Future.delayed(Duration(seconds: 4)).then((_) {
      if (isFirstBoot == null) {
        box.write("isFirstBoot", false);
        Get.offNamed(Routes.getOnboardingRoute);
      } else {
        Get.offNamed(Routes.getLoginRoute);
      }
    });
  }
}
