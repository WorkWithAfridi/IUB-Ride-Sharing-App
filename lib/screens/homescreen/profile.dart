import 'package:bnans_iub/constants/app_theme.dart';
import 'package:bnans_iub/routes/routes.dart';
import 'package:bnans_iub/widgets/backButton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Khondakar Afridi",
          style: getMarkerFontStyle.copyWith(fontSize: 15, color: customWhite),
        ),
        centerTitle: true,
        leading: GetBackButton()
      ),
      body: Stack(
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            child: Image.asset(
              'assets/images/maps/map (1).jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: Get.height,
            width: Get.width,
            color: Colors.black.withOpacity(.5),
          ),
          Padding(
            padding: getGlobalPadding(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(110),
                        color: primaryColor,
                      ),
                    ),
                    Container(
                      height: 105,
                      width: 105,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(105),
                        color: primaryColor,
                      ),
                      child: CircleAvatar(
                        backgroundColor: primaryColor,
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1611223426643-fa293cb2efbc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Khondakar Afridi",
                  style: getMarkerFontStyle.copyWith(
                      color: customWhite, fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Student ID',
                          style:
                              getDefaultFontStyle.copyWith(color: customWhite),
                        ),
                        Text(
                          "1820461",
                          style:
                              getDefaultFontStyle.copyWith(color: customWhite),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Phone',
                          style:
                              getDefaultFontStyle.copyWith(color: customWhite),
                        ),
                        Text(
                          "01741499768",
                          style:
                              getDefaultFontStyle.copyWith(color: customWhite),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () async {
                    Get.offAllNamed(Routes.getLoginRoute);
                  },
                  child: Padding(
                    padding: getGlobalPadding(),
                    child: Container(
                      height: 50,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        border: Border.all(color: primaryColor.withOpacity(.5)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          'Sign out',
                          style: getMarkerFontStyle.copyWith(
                              fontWeight: FontWeight.bold,
                              color: customBlack,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
