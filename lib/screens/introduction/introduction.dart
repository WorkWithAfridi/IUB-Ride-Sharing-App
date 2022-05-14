import 'package:bnans_iub/constants/appTheme.dart';
import 'package:bnans_iub/functions/launchUrl.dart';
import 'package:bnans_iub/screens/homescreen/activeTrips.dart';
import 'package:bnans_iub/widgets/backButton.dart';
import 'package:bnans_iub/widgets/divider.dart';
import 'package:bnans_iub/widgets/google_maps.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../routes/appRoutes.dart';
import '../../widgets/getLoadingAnimation.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  bool isLoading = true;
  int debugCounter = 0;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    Future.delayed(Duration(seconds: 2)).then((_) {
      setState(() {
        isLoading = false;
      });
    });
  }

  final GlobalKey<ScaffoldState> IntroductionPageScaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: IntroductionPageScaffoldKey,
      appBar: AppBar(
        title: GestureDetector(
          onTap: () {
            if (debugCounter == 22) {
              launchInBrowser(
                  Uri.parse('https://sites.google.com/view/workwithafridi'));
            } else {
              setState(() {
                debugCounter++;
              });
            }
          },
          child: Text(
            appName,
            style:
                getMarkerFontStyle.copyWith(color: customBlack, fontSize: 20),
          ),
        ),
        centerTitle: true,
        elevation: 5,
        leading: InkWell(
            onTap: () {
              IntroductionPageScaffoldKey.currentState!.openDrawer();
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Icon(
              FontAwesomeIcons.bars,
              size: 15,
              color: customBlack,
            )),
        // actions: [
        //   IconButton(
        //     onPressed: () {},
        //     icon: Icon(
        //       FontAwesomeIcons.ellipsisVertical,
        //       size: 15,
        //       color: customBlack,
        //     ),
        //   )
        // ],
      ),
      drawer: Drawer(
        elevation: 5,
        child: Container(
          color: customWhite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.pink,
                height: Get.width /3.5 + 150,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: Image.asset(
                        'assets/images/backdrop.jpg',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    // Container(
                    //   width: double.infinity,
                    //   height: double.infinity,
                    //   color: customBlack.withOpacity(.3),
                    // ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppBar(
                          elevation: 0,
                          backgroundColor: Colors.transparent,
                          leading: GetBackButton(),
                        ),
                        Padding(
                          padding: getGlobalPadding(),
                          child: Container(
                            height: Get.width / 6,
                            width: Get.width / 6,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(105),
                              color: Colors.black,
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.black,
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1560595643-90bb555b2eaa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getGlobalPadding(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Khondakar Morshed Afridi",
                                style: getDefaultFontStyle.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: customWhite,
                                    fontSize: 15),
                              ),
                              Text(
                                "1820461",
                                style: getDefaultFontStyle.copyWith(
                                  color: customWhite,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed(Routes.getProfileRoute)?.then((value) {
                            Get.back();
                          });
                        },
                        child: Container(
                          height: Get.height / 15,
                          width: double.infinity,
                          alignment: Alignment.centerLeft,
                          padding: getGlobalPadding(),
                          child: Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.user,
                                size: 15,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Profile",
                                style: getDefaultFontStyle.copyWith(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed(Routes.getEmergencyContracts)
                              ?.then((value) {
                            Get.back();
                          });
                        },
                        child: Container(
                          height: Get.height / 15,
                          width: double.infinity,
                          alignment: Alignment.centerLeft,
                          padding: getGlobalPadding(),
                          child: Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.star,
                                size: 15,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Emergency Contacts",
                                style: getDefaultFontStyle.copyWith(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 1,
                width: Get.width,
                color: customBlack.withOpacity(.1),
              ),
              InkWell(
                onTap: () {
                  Get.offAllNamed(Routes.getLoginRoute);
                },
                child: Container(
                  height: Get.height / 15,
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  padding: getGlobalPadding(),
                  child: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.arrowRightFromBracket,
                        size: 15,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Sign out",
                        style: getDefaultFontStyle.copyWith(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
      backgroundColor: customWhite,
      body: Container(
        height: Get.height,
        width: Get.width,
        child: isLoading
            ? GetLoadingAnimation()
            : SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          InkWell(
                            onTap: () {
                              makePhoneCall("999");
                            },
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            child: Column(
                              children: [
                                Container(
                                  height: Get.width / 6,
                                  width: Get.width / 6,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                        color: customBlack.withOpacity(.5)),
                                  ),
                                  child: Lottie.asset(
                                      'assets/lottie_animations/sosLottieAnimation.json',
                                      fit: BoxFit.fitWidth),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                //TODO: call helpline - dial 999
                                Text(
                                  'S.O.S.',
                                  style: getDefaultFontStyle.copyWith(
                                      fontSize: 10,
                                      color: customBlack.withOpacity(.7)),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          InkWell(
                            onTap: () {
                              launchInBrowser(
                                  Uri.parse("http://www.iub.edu.bd/"));
                            },
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            child: Column(
                              children: [
                                Container(
                                  height: Get.width / 6,
                                  width: Get.width / 6,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                        color: customBlack.withOpacity(.5)),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                      'assets/images/iub_cover.jpg',
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  'Announcements',
                                  style: getDefaultFontStyle.copyWith(
                                      fontSize: 10,
                                      color: customBlack.withOpacity(.7)),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            children: [
                              Container(
                                height: Get.width / 6,
                                width: Get.width / 6,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      color: customBlack.withOpacity(.5)),
                                ),
                                child: Lottie.asset(
                                  'assets/lottie_animations/trafficLottieAnimation.json',
                                  repeat: false,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                'Traffic Alert',
                                style: getDefaultFontStyle.copyWith(
                                  fontSize: 10,
                                  color: customBlack.withOpacity(.7),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                height: Get.width / 6,
                                width: Get.width / 6,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      color: customBlack.withOpacity(.5)),
                                ),
                                child: Lottie.asset(
                                  'assets/lottie_animations/communityLottieAnimation.json',
                                  repeat: false,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                'Community',
                                style: getDefaultFontStyle.copyWith(
                                  fontSize: 10,
                                  color: customBlack.withOpacity(.7),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: getGlobalPadding(),
                      child: Container(
                        height: 60,
                        width: Get.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border:
                              Border.all(color: customBlack.withOpacity(.5)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  'Where to?',
                                  style: getDefaultFontStyle.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      letterSpacing: 1),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 85,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(.2),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.clock,
                                        color: customBlack,
                                        size: 15,
                                      ),
                                      Text(
                                        "Now",
                                        style: getDefaultFontStyle,
                                      ),
                                      Icon(
                                        FontAwesomeIcons.caretDown,
                                        color: customBlack,
                                        size: 15,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: getGlobalPadding(),
                      child: Text(
                        'Around you',
                        style: getDefaultFontStyle.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            letterSpacing: 1),
                      ),
                    ),
                    Padding(
                      padding: getGlobalPadding(),
                      child: Container(
                        height: Get.height / 4,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(.30),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: CustomGoogleMapsWidget(),
                      ),
                    ),
                    GetHorizontalCustomDivider(),
                    Padding(
                      padding: getGlobalPadding(),
                      child: Text(
                        'Want to post a Trip?',
                        style: getDefaultFontStyle.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            letterSpacing: 1),
                      ),
                    ),
                    Padding(
                      padding: getGlobalPadding(),
                      child: InkWell(
                        onTap: () {
                          Get.toNamed(Routes.getCreateATripRoute);
                        },
                        child: Container(
                          height: 50,
                          width: Get.width,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            border: Border.all(
                              color: customBlack.withOpacity(.3),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Register a Trip',
                              style: getDefaultFontStyle.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    GetHorizontalCustomDivider(),
                    Padding(
                      padding: getGlobalPadding(),
                      child: Text(
                        'Browse',
                        style: getDefaultFontStyle.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            letterSpacing: 1),
                      ),
                    ),
                    Padding(
                      padding: getGlobalPadding(),
                      child: InkWell(
                        onTap: () {
                          Get.to(
                            ActiveTrips(
                              toIub: true,
                            ),
                          );
                        },
                        child: Container(
                          height: 50,
                          width: Get.width,
                          decoration: BoxDecoration(
                            color: customBlack,
                            border:
                                Border.all(color: customBlack.withOpacity(.3)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'To IUB',
                              style: getDefaultFontStyle.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getGlobalPadding(),
                      child: InkWell(
                        onTap: () {
                          Get.to(
                            ActiveTrips(
                              toIub: false,
                            ),
                          );
                        },
                        child: Container(
                          height: 50,
                          width: Get.width,
                          decoration: BoxDecoration(
                            color: customBlack,
                            border:
                                Border.all(color: customBlack.withOpacity(.3)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'From IUB',
                              style: getDefaultFontStyle.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
