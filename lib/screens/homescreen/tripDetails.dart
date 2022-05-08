import 'package:bnans_iub/functions/launchUrl.dart';
import 'package:bnans_iub/widgets/divider.dart';
import 'package:bnans_iub/widgets/google_maps.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../constants/appTheme.dart';
import '../../widgets/backButton.dart';

class TripDetails extends StatefulWidget {
  const TripDetails({Key? key}) : super(key: key);

  @override
  State<TripDetails> createState() => _TripDetailsState();
}

class _TripDetailsState extends State<TripDetails> {
  bool rideConfirmed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Trip details",
          style: getDefaultFontStyle,
        ),
        centerTitle: true,
        leading: GetBackButton(),
        elevation: 5,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5,
            ),
            Container(
              height: Get.height / 4,
              padding: getGlobalPadding(),
              child: CustomGoogleMapsWidget(),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: getGlobalPadding(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45),
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        height: 43,
                        width: 43,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(43),
                          color: Colors.black,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(43),
                          child: Image.network(
                            "https://images.unsplash.com/photo-1560595643-90bb555b2eaa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Khondakar Morshed Afridi',
                          style: getDefaultFontStyle.copyWith(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          maxLines: 2,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '1820461',
                          style: getDefaultFontStyle.copyWith(
                            fontSize: 15,
                          ),
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            GetHorizontalCustomDivider(),
            Padding(
              padding: getGlobalPadding(),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          rideConfirmed = !rideConfirmed;
                        });
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: rideConfirmed? customBlack : primaryColor,
                          border:
                              Border.all(color: customBlack.withOpacity(.3)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            rideConfirmed? "Cancel seat" : 'Confirm ride',
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
                  rideConfirmed? Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          // color: customBlack,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: customBlack.withOpacity(.5),
                          ),
                        ),
                        child: Icon(
                          FontAwesomeIcons.message,
                          size: 15,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          makePhoneCall("+8801741499768");
                        },
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            // color: customBlack,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: customBlack.withOpacity(.5),
                            ),
                          ),
                          child: Icon(
                            FontAwesomeIcons.phone,
                            size: 15,
                          ),
                        ),
                      ),
                    ],
                  ) : SizedBox.shrink(),
                ],
              ),
            ),
            GetHorizontalCustomDivider(),
            Padding(
              padding: getGlobalPadding(),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Route',
                        style: getDefaultFontStyle.copyWith(
                            fontWeight: FontWeight.w700, fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Container(
                                          height: 15,
                                          width: 15,
                                          decoration: BoxDecoration(
                                            color: customBlack,
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                        ),
                                        Container(
                                          height: 4,
                                          width: 4,
                                          decoration: BoxDecoration(
                                            color: customWhite,
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 40,
                                          width: 2,
                                          color: customBlack,
                                        ),
                                        SizedBox(
                                          width: 1,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "From",
                                        style: getDefaultFontStyle.copyWith(
                                            color: customBlack.withOpacity(.7)),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Independent University, Bangladesh",
                                        style: getDefaultFontStyle,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      height: 15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                        color: customBlack,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                    Container(
                                      height: 4,
                                      width: 4,
                                      decoration: BoxDecoration(
                                        color: customWhite,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "To",
                                        style: getDefaultFontStyle.copyWith(
                                            color: customBlack.withOpacity(.7)),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Dhanmondi",
                                        style: getDefaultFontStyle,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            GetHorizontalCustomDivider(),
            Padding(
              padding: getGlobalPadding(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Fare',
                    style: getDefaultFontStyle.copyWith(
                        fontWeight: FontWeight.w700, fontSize: 14),
                  ),
                  Container(
                    height: 30,
                    // width: 30,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      color: customBlack,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "120 TK",
                      style: getDefaultFontStyle.copyWith(
                          color: customWhite, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            GetHorizontalCustomDivider(),
            Padding(
              padding: getGlobalPadding(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Transport medium',
                        style: getDefaultFontStyle.copyWith(
                            fontWeight: FontWeight.w700, fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        height: Get.width / 5,
                        width: Get.width / 5,
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: customBlack.withOpacity(.5)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Image.asset(
                                  'assets/images/maps/privateCar.png'),
                            ),
                            Container(
                                height: Get.height,
                                width: Get.width,
                                color: Colors.transparent),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Car',
                        style: getDefaultFontStyle.copyWith(
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            GetHorizontalCustomDivider(),
            Padding(
              padding: getGlobalPadding(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'License/ Number plate',
                        style: getDefaultFontStyle.copyWith(
                            fontWeight: FontWeight.w700, fontSize: 14),
                      ),
                      Expanded(child: Container()),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        height: 30,
                        decoration: BoxDecoration(
                          color: customBlack,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "ABC-XYZ-123",
                          style: getDefaultFontStyle.copyWith(
                              color: customWhite, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            GetHorizontalCustomDivider(),
            Padding(
              padding: getGlobalPadding(),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Seat and Time',
                        style: getDefaultFontStyle.copyWith(
                            fontWeight: FontWeight.w700, fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: customBlack,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Seats Available',
                            style: getDefaultFontStyle,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: customBlack,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "3",
                              style: getDefaultFontStyle.copyWith(
                                  color: customWhite,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: customBlack,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Departing at',
                            style: getDefaultFontStyle,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            // width: 30,
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            decoration: BoxDecoration(
                              color: customBlack,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "6:30 PM",
                              style: getDefaultFontStyle.copyWith(
                                  color: customWhite,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            GetHorizontalCustomDivider(),
            Padding(
              padding: getGlobalPadding(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: getDefaultFontStyle.copyWith(
                        fontWeight: FontWeight.w700, fontSize: 14),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Taking Bijoy Shorni- banani route',
                    style: getDefaultFontStyle,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
