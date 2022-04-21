import 'package:bnans_iub/screens/login/login_screen.dart';
import 'package:bnans_iub/screens/onboarding/onboarding_screen.dart';
import 'package:bnans_iub/screens/splashscreen/splash_screen.dart';
import 'package:get/get.dart';

class Routes {
  static get getSplashScreenRoute => '/splashScreen';
  static get getOnboardingRoute => '/onboarding';
  static get getLoginRoute => '/login';
  static List<GetPage> routes = [
    GetPage(
      name: getSplashScreenRoute,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: getOnboardingRoute,
      transition: Transition.rightToLeft,
      page: () => OnBoardingScreen(),
    ),
    GetPage(
      name: getLoginRoute,
      page: () => LoginScreen(),
      transition: Transition.rightToLeft,
    ),
  ];
}
