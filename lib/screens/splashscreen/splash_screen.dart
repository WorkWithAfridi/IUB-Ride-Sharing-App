import 'package:bnans_iub/constants/app_theme.dart';
import 'package:bnans_iub/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    triggerSplashScreenEvent();
    super.initState();
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
              child: Center(
                child: Text(
                  "Bnans",
                  style: getMarkerFontStyle,
                ),
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
                      color: Colors.yellow,
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
    Future.delayed(Duration(seconds: 4)).then((_) {
      Get.offNamed(Routes.getOnboardingRoute);
    });
  }
}
