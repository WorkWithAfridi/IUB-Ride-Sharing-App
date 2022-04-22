import 'package:bnans_iub/screens/homescreen/home_screen.dart';
import 'package:bnans_iub/screens/homescreen/travelling_to.dart';
import 'package:bnans_iub/screens/login/login_screen.dart';
import 'package:bnans_iub/screens/onboarding/onboarding_screen.dart';
import 'package:bnans_iub/screens/splashscreen/splash_screen.dart';
import 'package:get/get.dart';

class Routes {
  static get getSplashScreenRoute => '/splashScreen';
  static get getOnboardingRoute => '/onboarding';
  static get getLoginRoute => '/login';
  static get getHomescreenRoute => '/homescreen';
  static get getTravellingToIUBScreen => '/travellingto';
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
    GetPage(
      name: getHomescreenRoute,
      page: () => HomeScreen(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: getTravellingToIUBScreen,
      page: () => TravellingToIUBScreen(),
      transition: Transition.rightToLeft,
    ),
  ];
}
