import 'package:bnans_iub/functions/pickRandomColor.dart';
import 'package:bnans_iub/routes/appRoutes.dart';
import 'package:bnans_iub/widgets/divider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../constants/appTheme.dart';
import '../model/trip.dart';

class GetTripCard extends StatefulWidget {
  Trip currentTrip;
  GetTripCard({Key? key, required this.currentTrip}) : super(key: key);

  @override
  State<GetTripCard> createState() => _GetTripCardState();
}

class _GetTripCardState extends State<GetTripCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: InkWell(
        onTap: () {
          Get.toNamed(Routes.getTripDetails);
        },
        child: Container(
          // height: 100,
          decoration: BoxDecoration(
            color: customBlack.withOpacity(.025),
            border: Border.all(color: customBlack.withOpacity(.3)),
            borderRadius: BorderRadius.circular(5),
          ),
          width: Get.width,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35),
                                  color: Colors.black,
                                ),
                              ),
                              Container(
                                height: 33,
                                width: 33,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(33),
                                  color: Colors.black,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(33),
                                  child: Image.network(
                                    "https://images.unsplash.com/photo-1560595643-90bb555b2eaa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.currentTrip.username.toString(),
                                style: getDefaultFontStyle.copyWith(
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                widget.currentTrip.uid.toString(),
                                style: getDefaultFontStyle,
                              ),
                            ],
                          )
                        ],
                      ),
                      InkWell(
                        onTap: () {},
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        child: Container(
                          height: 25,
                          width: 15,
                          alignment: Alignment.center,
                          child: Icon(
                            FontAwesomeIcons.ellipsisVertical,
                            size: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 8,
                    ),
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 10,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.currentTrip.from.toString(),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.currentTrip.to.toString(),
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
                  height: 5,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Fare: ",
                          style: getDefaultFontStyle.copyWith(
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.currentTrip.fare.toString(),
                          style: getDefaultFontStyle,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "Seats Available: ",
                          style: getDefaultFontStyle.copyWith(
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.currentTrip.seatsAvailable.toString(),
                          style: getDefaultFontStyle,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "Via: ",
                          style: getDefaultFontStyle.copyWith(
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.currentTrip.transportMedium.toString(),
                          style: getDefaultFontStyle,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
