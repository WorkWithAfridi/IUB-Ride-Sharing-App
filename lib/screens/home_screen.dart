import 'package:bnans_iub/constants/appTheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person,
              color: customBlack,
            ),
          )
        ],
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        child: Column(
          children: [
            Flexible(
              flex: 2,
              child: Container(
                  width: Get.width,
                  child: Image.asset(
                    'assets/images/maps/map (5).jpg',
                    fit: BoxFit.cover,
                  )),
            ),
            Flexible(
              flex:1,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 25),
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
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: Get.width,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          border:
                              Border.all(color: customBlack.withOpacity(.5)),
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
                          style: getDefaultFontStyle,
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
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: Get.width,
                        decoration: BoxDecoration(
                          color: customBlack,
                          border:
                              Border.all(color: customBlack.withOpacity(.5)),
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
          ],
        ),
      ),
    );
  }
}
