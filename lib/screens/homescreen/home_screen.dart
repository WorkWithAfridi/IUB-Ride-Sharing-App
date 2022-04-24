import 'package:bnans_iub/constants/app_theme.dart';
import 'package:bnans_iub/routes/routes.dart';
import 'package:bnans_iub/widgets/getLoadingAnimation.dart';
import 'package:bnans_iub/widgets/getTripCard.dart';
import 'package:bnans_iub/widgets/google_maps.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../functions/custom_snackbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading = true;

  @override
  void initState() {
    // TODO: implement initState
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BNANS",
          style: getMarkerFontStyle.copyWith(color: customBlack),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: customBlack,
          ),
        ),
        actions: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: customBlack,
                ),
              ),
              Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: primaryColor,
                ),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1465153690352-10c1b29577f8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=715&q=80'),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 17,
          )
        ],
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        child: isLoading
            ? GetLoadingAnimation()
            : Stack(
                children: [
                  SizedBox(
                    height: Get.height,
                    width: Get.width,
                    child: CustomGoogleMapsWidget(),
                  ),
                  Container(
                    height: Get.height,
                    width: Get.width,
                    color: Colors.white.withOpacity(.3),
                  ),
                  Positioned(
                    top: 40,
                    left: 0,
                    child: Container(
                      color: customWhite.withOpacity(.7),
                      padding: EdgeInsets.all(15),
                      // color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Legend',
                            style: getDefaultFontStyle,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                FontAwesomeIcons.locationCrosshairs,
                                color: Colors.red,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Your location',
                                style: getDefaultFontStyle,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                FontAwesomeIcons.locationDot,
                                color: Colors.blueAccent,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Onging to IUB',
                                style: getDefaultFontStyle,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                FontAwesomeIcons.locationDot,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Outgoing from IUB',
                                style: getDefaultFontStyle,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: Get.height,
                    width: Get.width,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: Get.height * .6,
                          ),
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  customWhite.withOpacity(.0),
                                  customWhite.withOpacity(.5),
                                  customWhite.withOpacity(.7),
                                  customWhite.withOpacity(.9),
                                  //add more colors for gradient
                                ],
                                begin: Alignment
                                    .topCenter, //begin of the gradient color
                                end: Alignment
                                    .bottomCenter, //end of the gradient color
                                // stops: [0, 0.2, 0.5, 0.8] //stops for individual color
                                //set the stops number equal to numbers of color
                              ),
                            ),
                          ),
                          Container(
                            color: customWhite,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  // height: 100,
                                  // color: Colors.blue,
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Active Trips",
                                            style: getMarkerFontStyle.copyWith(
                                              color: customBlack,
                                              fontSize: 25,
                                            ),
                                          ),
                                          Text(
                                            '23rd June - 12:01PM',
                                            style: getDefaultFontStyle.copyWith(
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: Get.width / 3,
                                        // height: 90,
                                        child: LottieBuilder.asset(
                                            'assets/lottie_animations/carLottieAnimation.json'),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                // Container(
                                //   height: .5,
                                //   width: Get.width / 2,
                                //   color: customBlack.withOpacity(.5),
                                // ),
                                // SizedBox(
                                //   height: 15,
                                // ),
                                // SizedBox(
                                //   height: 5,
                                // ),
                                // Container(
                                //   child: Row(
                                //     mainAxisAlignment: MainAxisAlignment.center,
                                //     children: [
                                //       Container(
                                //         height: 30,
                                //         width: 30,
                                //         decoration: BoxDecoration(
                                //           border: Border.all(
                                //               color: customBlack.withOpacity(.5),
                                //               width: 2),
                                //           borderRadius: BorderRadius.circular(30),
                                //         ),
                                //         child: Icon(
                                //           Icons.add,
                                //           color: customBlack.withOpacity(.5),
                                //         ),
                                //       ),
                                //       SizedBox(
                                //         width: 10,
                                //       ),
                                //       Text(
                                //         'Register a Trip',
                                //         style: getDefaultFontStyle.copyWith(
                                //             fontSize: 15,
                                //             color: customBlack.withOpacity(.5)),
                                //       )
                                //     ],
                                //   ),
                                // ),
                                // SizedBox(
                                //   height: 10,
                                // ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 18.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Ongoing trips',
                                        style: getDefaultFontStyle.copyWith(
                                            color: customBlack, fontSize: 15),
                                      ),
                                      Text(
                                        'See more',
                                        style: getDefaultFontStyle.copyWith(
                                            color: customBlack,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Container(
                                  width: Get.width,
                                  child: ListView.builder(
                                    itemCount: 3,
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    itemBuilder: (context, index) {
                                      return GetTripCard();
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 18.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Outgoing trips',
                                        style: getDefaultFontStyle.copyWith(
                                            color: customBlack, fontSize: 15),
                                      ),
                                      Text(
                                        'See more',
                                        style: getDefaultFontStyle.copyWith(
                                            color: customBlack,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Container(
                                  width: Get.width,
                                  child: ListView.builder(
                                    itemCount: 3,
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    itemBuilder: (context, index) {
                                      return GetTripCard();
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Copyright - Kyoto 2022',
                                      style: getDefaultFontStyle.copyWith(
                                          fontSize: 12,
                                          color: customBlack.withOpacity(.8)),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
      ),
    );
  }
}
