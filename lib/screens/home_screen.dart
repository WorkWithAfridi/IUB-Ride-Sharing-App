import 'package:bnans_iub/widgets/GoogleMaps.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../constants/appTheme.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  bool startGoogleMapShrinkAnimation = false;
  double googleMapContainerSize = Get.height * .65;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: Get.height,
              width: Get.width,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      height: googleMapContainerSize,
                      color: Colors.red,
                      child: Stack(
                        children: [
                          Container(
                            width: Get.width,
                            // height: googleMapContainerSize,
                            // duration: Duration(seconds: 2),
                            // child: CustomGoogleMapsWidget(),
                            color: Colors.pink,
                            child: Image.asset('assets/images/maps/dhaka.jpg', fit: BoxFit.cover,),
                          ),
                          Container(
                            height: 40,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.white.withOpacity(.0),
                                  Colors.white.withOpacity(.5),
                                  Colors.white.withOpacity(.8),
                                  Colors.white.withOpacity(1),
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.white.withOpacity(.0),
                                    Colors.white.withOpacity(.5),
                                    Colors.white.withOpacity(.8),
                                    Colors.white.withOpacity(1),
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: Get.height * .3,
                      // color: Colors.blue,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Hi, are you travelling',
                            style: getDefaultFontStyle,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                                googleMapContainerSize=Get.height * .65;
                              });
                            },
                            child: Container(
                              height: 45,
                              width: Get.width / 1.5,
                              decoration: BoxDecoration(
                                color: customBlack,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                'To',
                                style: getBoldFontStyle.copyWith(
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            // height: 40,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 1,
                                  width: 30,
                                  color: customBlack.withOpacity(.6),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'OR',
                                  style: getDefaultFontStyle,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 1,
                                  width: 30,
                                  color: customBlack.withOpacity(.6),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                                googleMapContainerSize=Get.height * .45;
                              });
                            },
                            child: Container(
                              height: 45,
                              width: Get.width / 1.5,
                              decoration: BoxDecoration(
                                color: customBlack,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                'From',
                                style: getBoldFontStyle.copyWith(
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Independent University, Bangladesh? ',
                            style: getDefaultFontStyle,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 100,
                width: Get.width,
                // color: Colors.yellow,
                child: Column(
                  children: [
                    Container(
                      height:60,
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.menu),
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                "Bnans",
                                style: getBoldFontStyle.copyWith(fontSize: 20),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.person,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.white.withOpacity(.0),
                            Colors.white.withOpacity(.5),
                            Colors.white.withOpacity(.8),
                            Colors.white.withOpacity(1),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
