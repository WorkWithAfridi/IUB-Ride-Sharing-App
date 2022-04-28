import 'package:bnans_iub/constants/app_theme.dart';
import 'package:bnans_iub/widgets/divider.dart';
import 'package:bnans_iub/widgets/google_maps.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../routes/routes.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customWhite,
      body: SafeArea(
        child: Container(
          height: Get.height,
          width: Get.width,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBar(
                  title: Text(
                    "BNANS",
                    style: getMarkerFontStyle.copyWith(color: customBlack),
                  ),
                  centerTitle: true,
                  elevation: 0,
                  actions: [
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.getProfileRoute);
                      },
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: customBlack,
                            ),
                          ),
                          Container(
                            height: 28,
                            width: 28,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28),
                              color: customBlack,
                            ),
                            child: CircleAvatar(
                              backgroundColor: customBlack,
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1611223426643-fa293cb2efbc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 17,
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Card(
                          elevation: 5,
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: customWhite,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/images/iub_cover.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Iub.edu.bd',
                          style: getDefaultFontStyle.copyWith(
                              color: customBlack.withOpacity(.7)),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Card(
                          elevation: 5,
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: customWhite,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/images/loudspeaker.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Announcements',
                          style: getDefaultFontStyle.copyWith(
                              color: customBlack.withOpacity(.7)),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: getGlobalPadding(),
                  child: Container(
                    height: 60,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(.20),
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
                                  fontSize: 18,
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
                                color: Colors.white,
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
                        fontSize: 18,
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
                GetCustomDivider(),
                Padding(
                  padding: getGlobalPadding(),
                  child: Text(
                    'Want to post a Trip?',
                    style: getDefaultFontStyle.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
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
                        color: Colors.white,
                        border: Border.all(color: customBlack.withOpacity(.5)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          'Register a Trip',
                          style: getDefaultFontStyle.copyWith(
                            color: customBlack,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                GetCustomDivider(),
                Padding(
                  padding: getGlobalPadding(),
                  child: Text(
                    'Browse',
                    style: getDefaultFontStyle.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        letterSpacing: 1),
                  ),
                ),
                Padding(
                  padding: getGlobalPadding(),
                  child: InkWell(
                    onTap: () {
                      Get.toNamed(Routes.getHomescreenRoute);
                    },
                    child: Container(
                      height: 50,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: customBlack.withOpacity(.5)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          'Ongoing trips to IUB',
                          style: getDefaultFontStyle.copyWith(
                            color: customBlack,
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
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: customBlack.withOpacity(.5)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          'Outgoing trips from IUB',
                          style: getDefaultFontStyle.copyWith(
                            color: customBlack,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
