import 'package:bnans_iub/screens/homescreen/addATrip.dart';
import 'package:bnans_iub/screens/homescreen/activeTrips.dart';
import 'package:bnans_iub/screens/homescreen/emergencyContacts.dart';
import 'package:bnans_iub/screens/homescreen/profile.dart';
import 'package:bnans_iub/screens/homescreen/tripDetails.dart';
import 'package:bnans_iub/screens/introduction/introduction.dart';
import 'package:bnans_iub/screens/login/login_screen.dart';
import 'package:bnans_iub/screens/onboarding/onboarding_screen.dart';
import 'package:bnans_iub/screens/splashscreen/splash_screen.dart';
import 'package:get/get.dart';

class Routes {
  static get getSplashScreenRoute => '/splashScreen';
  static get getOnboardingRoute => '/onboarding';
  static get getLoginRoute => '/login';
  static get getIntroductionRoute => '/introductionScreen';
  static get getActiveTrips => '/activeTrips';
  static get getProfileRoute => '/profile';
  static get getCreateATripRoute => '/createATrip';
  static get getTripDetails => '/tripDetails';
  static get getEmergencyContracts => '/emergencyContacts';
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
      name: getActiveTrips,
      page: () => ActiveTrips(
        toIub: false,
      ),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: getIntroductionRoute,
      page: () => IntroductionScreen(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: getProfileRoute,
      page: () => Profile(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: getEmergencyContracts,
      page: () => EmergencyContacts(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: getCreateATripRoute,
      page: () => CreateATrip(),
      transition: Transition.downToUp,
    ),
    GetPage(
      name: getTripDetails,
      page: () => TripDetails(),
      transition: Transition.rightToLeft,
    ),
  ];
}
