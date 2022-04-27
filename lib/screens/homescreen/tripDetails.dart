import 'package:bnans_iub/widgets/google_maps.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../constants/app_theme.dart';
import '../../widgets/backButton.dart';

class TripDetails extends StatefulWidget {
  const TripDetails({Key? key}) : super(key: key);

  @override
  State<TripDetails> createState() => _TripDetailsState();
}

class _TripDetailsState extends State<TripDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: customBlack,
        title: Text(
          "Trip Detail",
          style: getMarkerFontStyle.copyWith(fontSize: 15, color: customWhite),
        ),
        centerTitle: true,
        leading: GetBackButton(),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: Get.height / 4,
              child: CustomGoogleMapsWidget(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
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
                    height: 15,
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
                            // Row(
                            //   children: [
                            //     SizedBox(
                            //       width: 6,
                            //     ),
                            //     Container(
                            //       height: 5,
                            //       width: 2,
                            //       color: customBlack,
                            //     ),
                            //   ],
                            // ),
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
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 1,
                    width: Get.width,
                    color: customBlack.withOpacity(.1),
                  ),
                  SizedBox(
                    height: 15,
                  ),
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
                    height: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: customBlack.withOpacity(.5)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: Get.height,
                              width: Get.width,
                              child: Image.asset(
                                'assets/images/maps/map (1).jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Image.asset(
                                  'assets/images/maps/motorbike.png'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Bike',
                        style: getDefaultFontStyle,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 1,
                    width: Get.width,
                    color: customBlack.withOpacity(.1),
                  ),
                  SizedBox(
                    height: 15,
                  ),
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
                    height: 15,
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
                          // InkWell(
                          //   onTap: () {},
                          //   child: Container(
                          //     height: 30,
                          //     width: 30,
                          //     decoration: BoxDecoration(
                          //       color: customBlack.withOpacity(.2),
                          //       borderRadius: BorderRadius.circular(5),
                          //     ),
                          //     alignment: Alignment.center,
                          //     child: Icon(
                          //       FontAwesomeIcons.minus,
                          //       size: 12,
                          //     ),
                          //   ),
                          // ),
                          // SizedBox(
                          //   width: 5,
                          // ),
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
                          // SizedBox(
                          //   width: 5,
                          // ),
                          // InkWell(
                          //   onTap: () {},
                          //   child: Container(
                          //     height: 30,
                          //     width: 30,
                          //     decoration: BoxDecoration(
                          //       color: customBlack.withOpacity(.2),
                          //       borderRadius: BorderRadius.circular(5),
                          //     ),
                          //     alignment: Alignment.center,
                          //     child: Icon(
                          //       FontAwesomeIcons.plus,
                          //       size: 12,
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
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
                          // InkWell(
                          //   onTap: () {},
                          //   child: Container(
                          //     height: 30,
                          //     width: 30,
                          //     decoration: BoxDecoration(
                          //       color: customBlack.withOpacity(.2),
                          //       borderRadius: BorderRadius.circular(5),
                          //     ),
                          //     alignment: Alignment.center,
                          //     child: Icon(
                          //       FontAwesomeIcons.minus,
                          //       size: 12,
                          //     ),
                          //   ),
                          // ),
                          // SizedBox(
                          //   width: 5,
                          // ),
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
                          // SizedBox(
                          //   width: 5,
                          // ),
                          // InkWell(
                          //   onTap: () {},
                          //   child: Container(
                          //     height: 30,
                          //     width: 30,
                          //     decoration: BoxDecoration(
                          //       color: customBlack.withOpacity(.2),
                          //       borderRadius: BorderRadius.circular(5),
                          //     ),
                          //     alignment: Alignment.center,
                          //     child: Icon(
                          //       FontAwesomeIcons.plus,
                          //       size: 12,
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 1,
                    width: Get.width,
                    color: customBlack.withOpacity(.1),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
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
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 1,
                    width: Get.width,
                    color: customBlack.withOpacity(.1),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
                      SizedBox(
                        width: 50,
                      ),
                      Row(
                        children: [
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
                          // SizedBox(
                          //   width: 10,
                          // ),
                          // Expanded(
                          //   child: Container(
                          //     height: 50,
                          //     decoration: BoxDecoration(
                          //       color: customBlack,
                          //       borderRadius: BorderRadius.circular(5),
                          //     ),
                          //     alignment: Alignment.center,
                          //     child: Text(
                          //       'Khondakar Afridi',
                          //       style: getDefaultFontStyle.copyWith(
                          //           color: customWhite,
                          //           fontWeight: FontWeight.bold,
                          //           fontSize: 15),
                          //     ),
                          //   ),
                          // ),
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
                              FontAwesomeIcons.phone,
                              size: 15,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
