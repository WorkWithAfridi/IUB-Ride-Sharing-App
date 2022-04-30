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
import '../../widgets/backButton.dart';

class ActiveTrips extends StatefulWidget {
  const ActiveTrips({Key? key}) : super(key: key);

  @override
  State<ActiveTrips> createState() => _ActiveTripsState();
}

class _ActiveTripsState extends State<ActiveTrips> {
  bool isLoading = true;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ongoing Trips",
          style: getDefaultFontStyle,
        ),
        centerTitle: true,
        leading: GetBackButton(),
        elevation: 5,
      ),
      body: Container(
        // padding: getGlobalPadding(),
        height: Get.height,
        width: Get.width,
        child: isLoading
            ? GetLoadingAnimation()
            : SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: getGlobalPadding(),
                      child: SizedBox(
                        height: Get.height / 2,
                        width: Get.width,
                        child: CustomGoogleMapsWidget(),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: getGlobalPadding(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Active trips on route to IUB',
                            style: getDefaultFontStyle.copyWith(
                                fontWeight: FontWeight.w700, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Padding(
                      padding: getGlobalPadding(),
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (index, context) {
                          return GetTripCard();
                        },
                      ),
                    )
                  ],
                ),
              ),
      ),
    );
  }
}
