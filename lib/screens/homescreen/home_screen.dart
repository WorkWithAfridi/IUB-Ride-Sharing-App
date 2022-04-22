import 'package:bnans_iub/constants/app_theme.dart';
import 'package:bnans_iub/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../functions/custom_snackbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BNANS",
          style: getMarkerFontStyle.copyWith(color: customBlack),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: customBlack,
          ),
        ),
        actions: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: customBlack,
                ),
              ),
              Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: primaryColor,
                ),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1465153690352-10c1b29577f8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=715&q=80'),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 17,
          )
        ],
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        child: Stack(
          children: [
            Container(
              height: Get.height,
              width: Get.width,
              child: Image.asset(
                'assets/images/maps/map (5).jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: Get.height,
              width: Get.width,
              color: Colors.black.withOpacity(.5),
            ),
            Center(
              child: Padding(
                padding: getGlobalPadding(),
                child: Card(
                  elevation: 6,
                  child: Container(
                    height: 200,
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                      color: customWhite,
                      border: Border.all(
                        color: customBlack.withOpacity(.5),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Hi, are you travelling',
                          style: getDefaultFontStyle,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Get.toNamed(Routes.getTravellingToIUBScreen);
                          },
                          child: Container(
                            height: 50,
                            width: Get.width,
                            decoration: BoxDecoration(
                              color: primaryColor,
                              border: Border.all(
                                  color: customBlack.withOpacity(.5)),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                'TO',
                                style: getMarkerFontStyle.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: customBlack,
                                    fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 1,
                              width: 30,
                              color: customBlack,
                            ),
                            Text(
                              ' OR ',
                              style: getDefaultFontStyle.copyWith(fontSize: 13),
                            ),
                            Container(
                              height: 1,
                              width: 30,
                              color: customBlack,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        InkWell(
                          onTap: () {
                            showCustomSnackbar(
                              "Hi, Kyoto",
                              "Welcome aboard on BNANS. \nHave a save journey! :)",
                            );
                          },
                          child: Container(
                            height: 50,
                            width: Get.width,
                            decoration: BoxDecoration(
                              color: customBlack,
                              border: Border.all(
                                  color: customBlack.withOpacity(.5)),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                'FROM',
                                style: getMarkerFontStyle.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: primaryColor,
                                    fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Independent University, Bangladesh?',
                          style: getDefaultFontStyle,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
