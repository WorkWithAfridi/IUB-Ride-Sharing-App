import 'package:bnans_iub/functions/randomColor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../constants/app_theme.dart';

class GetTripCard extends StatefulWidget {
  const GetTripCard({Key? key}) : super(key: key);

  @override
  State<GetTripCard> createState() => _GetTripCardState();
}

class _GetTripCardState extends State<GetTripCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15, top: 5),
      child: Card(
        elevation: 6,
        child: Container(
          width: Get.width,
          padding: EdgeInsets.all(10),
          height: 130,
          child: Row(
            children: [
              Container(
                width: Get.width / 5,
                decoration: BoxDecoration(
                  border: Border.all(color: customBlack.withOpacity(.5)),
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
                      child: Image.asset(getRandomTransportVehicle()),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Khondakar Afridi",
                            style: getDefaultFontStyle.copyWith(
                                fontWeight: FontWeight.w600),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            "1820461",
                            style: getDefaultFontStyle,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'From: ',
                                style: getDefaultFontStyle,
                              ),
                              Text(
                                'Bailey Road, Shantinager.',
                                style: getDefaultFontStyle.copyWith(
                                    color: customBlack.withOpacity(.8)),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'To: ',
                                style: getDefaultFontStyle,
                              ),
                              Text(
                                'Independent University, Bangladesh.',
                                style: getDefaultFontStyle.copyWith(
                                    color: customBlack.withOpacity(.8)),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Via: ',
                                style: getDefaultFontStyle,
                              ),
                              Text(
                                'Rampura, Hatir jheel.',
                                style: getDefaultFontStyle.copyWith(
                                  color: customBlack.withOpacity(.8),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Posted: ',
                                style: getDefaultFontStyle,
                              ),
                              Text(
                                '${timeago.format(DateTime.now())}',
                                style: getDefaultFontStyle.copyWith(
                                    color: customBlack.withOpacity(.8)),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
