import 'package:bnans_iub/constants/app_theme.dart';
import 'package:bnans_iub/widgets/google_maps.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class TravellingToIUBScreen extends StatefulWidget {
  const TravellingToIUBScreen({Key? key}) : super(key: key);

  @override
  State<TravellingToIUBScreen> createState() => _TravellingToIUBScreenState();
}

class _TravellingToIUBScreenState extends State<TravellingToIUBScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ongoing trips to IUB",
          style: getDefaultFontStyle.copyWith(
              fontSize: 15, color: customBlack.withOpacity(.8), fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: customBlack,
          ),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(15),
                child: Card(
                  elevation: 6,
                  child: Container(
                    height: Get.height / 2,
                    child: CustomGoogleMapsWidget(),
                  ),
                ),
              ),
              Container(
                // height: 100,
                // color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                          style: getDefaultFontStyle.copyWith(fontSize: 12),
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
              Container(
                height: .5,
                width: Get.width / 2,
                color: customBlack.withOpacity(.5),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: customBlack.withOpacity(.5), width: 2),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(
                        Icons.add,
                        color: customBlack.withOpacity(.5),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Register a Trip',
                      style: getDefaultFontStyle.copyWith(
                          fontSize: 15, color: customBlack.withOpacity(.5)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                    child: Card(
                      elevation: 6,
                      child: Container(
                        width: Get.width,
                        height: 100,
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
