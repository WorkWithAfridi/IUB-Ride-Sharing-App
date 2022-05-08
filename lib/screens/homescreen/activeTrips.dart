import 'package:bnans_iub/constants/appTheme.dart';
import 'package:bnans_iub/model/trip.dart';
import 'package:bnans_iub/routes/appRoutes.dart';
import 'package:bnans_iub/widgets/getLoadingAnimation.dart';
import 'package:bnans_iub/widgets/getTripCard.dart';
import 'package:bnans_iub/widgets/google_maps.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../functions/showCustomSnackbar.dart';
import '../../widgets/backButton.dart';

class ActiveTrips extends StatefulWidget {
  bool toIub;
  ActiveTrips({Key? key, required this.toIub}) : super(key: key);

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
          widget.toIub ? "Ongoing Trips" : "Outgoing Trips",
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
                            'Active trips on route ${widget.toIub ? "to" : "from"} IUB',
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
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: StreamBuilder(
                        stream: FirebaseFirestore.instance
                            .collection('activeTrips')
                            .where('toIub', isEqualTo: widget.toIub)
                            // .orderBy('scheduledTime', descending: true)
                            .snapshots(),
                        builder: (context,
                            AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>>
                                snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return GetLoadingAnimation();
                          }
                          return snapshot.data!.docs.length == 0
                              ? Row(
                                  children: [
                                    Text(
                                      'No active rides found! :( ',
                                      style: getDefaultFontStyle,
                                    ),
                                  ],
                                )
                              : ListView.builder(
                                  shrinkWrap: true,
                                  physics: BouncingScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    Trip trip = Trip.fromSnap(
                                        snapshot.data!.docs[index]);
                                    return widget.toIub ==
                                            snapshot.data!.docs[index]['toIub']
                                        ? GetTripCard(
                                            currentTrip: trip,
                                          )
                                        : SizedBox.shrink();
                                  },
                                  itemCount: snapshot.data!.docs.length,
                                );
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
