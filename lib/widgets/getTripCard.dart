import 'package:bnans_iub/functions/randomColor.dart';
import 'package:bnans_iub/routes/routes.dart';
import 'package:bnans_iub/widgets/divider.dart';
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
      padding: const EdgeInsets.only(bottom: 10.0),
      child: InkWell(
        onTap: () {
          Get.toNamed(Routes.getTripDetails);
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: customBlack.withOpacity(.5)),
            borderRadius: BorderRadius.circular(5),
          ),
          padding: EdgeInsets.all(15),
          height: 130,
          width: Get.width,
          child: Row(
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  // decoration: BoxDecoration(
                  //   border: Border.all(color: customBlack.withOpacity(.5)),
                  //   borderRadius: BorderRadius.circular(5),
                  // ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      // Container(
                      //   height: Get.height,
                      //   width: Get.width,
                      //   child: Image.asset(
                      //     'assets/images/maps/map (2).jpg',
                      //     fit: BoxFit.cover,
                      //   ),
                      // ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Image.asset(getRandomTransportVehicle()),
                      ),
                    ],
                  ),
                ),
              ),
              GetVerticalCustomDivider(),
              Flexible(
                flex: 5,
                child: Container(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Khondakar Afridi ",
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
                              Expanded(
                                child: Text(
                                  ' Baily road, Shantinagar.',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: getDefaultFontStyle.copyWith(
                                      color: customBlack.withOpacity(.8)),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'To: ',
                                style: getDefaultFontStyle,
                              ),
                              Expanded(
                                child: Text(
                                  'Independent University, Bangladesh.',
                                  maxLines: 1,
                                  style: getDefaultFontStyle.copyWith(
                                      color: customBlack.withOpacity(.8)),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Via: ',
                                style: getDefaultFontStyle,
                              ),
                              Expanded(
                                child: Text(
                                  'Rampura, Hatir jheel.',
                                  maxLines: 1,
                                  style: getDefaultFontStyle.copyWith(
                                    color: customBlack.withOpacity(.8),
                                    overflow: TextOverflow.ellipsis,
                                  ),
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
