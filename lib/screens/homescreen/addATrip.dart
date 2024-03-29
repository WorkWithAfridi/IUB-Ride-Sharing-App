import 'dart:math';

import 'package:bnans_iub/constants/appTheme.dart';
import 'package:bnans_iub/functions/firebaseMethods.dart';
import 'package:bnans_iub/functions/showCustomSnackbar.dart';
import 'package:bnans_iub/widgets/backButton.dart';
import 'package:bnans_iub/widgets/customTextField.dart';
import 'package:bnans_iub/widgets/getLoadingAnimation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../functions/pickRandomColor.dart';
import '../../widgets/divider.dart';

class CreateATrip extends StatefulWidget {
  const CreateATrip({Key? key}) : super(key: key);

  @override
  State<CreateATrip> createState() => _CreateATripState();
}

class _CreateATripState extends State<CreateATrip> {
  TextEditingController FromTEC = TextEditingController();
  TextEditingController ToTEC = TextEditingController();
  TextEditingController DescriptionTEC = TextEditingController();
  TextEditingController FareTEC = TextEditingController();
  TextEditingController LisencePlateTEC = TextEditingController();
  int numberOfSeatsAvailable = 0;
  String transportMedium = '';
  String scheduledTime = DateTime.now().toString();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Registering a new trip",
          style: getDefaultFontStyle,
        ),
        centerTitle: true,
        leading: GetBackButton(),
        elevation: 5,
      ),
      body: Container(
        color: customWhite,
        width: Get.width,
        // decoration: BoxDecoration(
        //   color: customWhite,
        //   borderRadius: BorderRadius.only(topLeft: Radius.circular(15)),
        // ),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: getGlobalPadding(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Route',
                          style: getDefaultFontStyle.copyWith(
                              fontWeight: FontWeight.w700, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getGlobalPadding(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                height: 60,
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "From",
                                              style:
                                                  getDefaultFontStyle.copyWith(
                                                      color: customBlack
                                                          .withOpacity(.7)),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            GetCustomTextField(
                                              hintText:
                                                  'Enter your current location',
                                              textEditingController: FromTEC,
                                              maxLines: 1,
                                              textInputType: TextInputType.text,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Container(
                                        height: 15,
                                        width: 2,
                                        color: customBlack,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "To",
                                              style:
                                                  getDefaultFontStyle.copyWith(
                                                      color: customBlack
                                                          .withOpacity(.7)),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            GetCustomTextField(
                                              hintText:
                                                  'Enter the location you are heading',
                                              textEditingController: ToTEC,
                                              maxLines: 1,
                                              textInputType: TextInputType.text,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              // width: 60,
                              child: IconButton(
                                icon: RotatedBox(
                                  quarterTurns: 1,
                                  child: Icon(
                                    FontAwesomeIcons.arrowRightArrowLeft,
                                    size: 15,
                                  ),
                                ),
                                onPressed: () {
                                  setState(() {
                                    String fromTEC = FromTEC.text;
                                    FromTEC.text = ToTEC.text;
                                    ToTEC.text = fromTEC;
                                  });
                                },
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  GetHorizontalCustomDivider(),
                  Padding(
                    padding: getGlobalPadding(),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Description of the trip',
                              style: getDefaultFontStyle.copyWith(
                                  fontWeight: FontWeight.w700, fontSize: 14),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        GetCustomTextField(
                          textEditingController: DescriptionTEC,
                          hintText: "What routes are you planning on taking?",
                          textInputType: TextInputType.text,
                          maxLines: 4,
                        ),
                      ],
                    ),
                  ),
                  GetHorizontalCustomDivider(),
                  Padding(
                    padding: getGlobalPadding(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Transport medium',
                          style: getDefaultFontStyle.copyWith(
                              fontWeight: FontWeight.w700, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              transportMedium = 'Bike';
                            });
                          },
                          child: Column(
                            children: [
                              Container(
                                height: Get.width / 5,
                                width: Get.width / 5,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: customBlack.withOpacity(.5)),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Image.asset(
                                          'assets/images/maps/motorbike.png'),
                                    ),
                                    Container(
                                      height: Get.height,
                                      width: Get.width,
                                      color: transportMedium == 'Bike'
                                          ? Colors.transparent
                                          : Colors.grey.withOpacity(.8),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Bike',
                                style: getDefaultFontStyle.copyWith(
                                  color: transportMedium == 'Bike'
                                      ? Colors.black
                                      : Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              transportMedium = 'Car';
                            });
                          },
                          child: Column(
                            children: [
                              Container(
                                height: Get.width / 5,
                                width: Get.width / 5,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: customBlack.withOpacity(.5)),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Image.asset(
                                          'assets/images/maps/privateCar.png'),
                                    ),
                                    Container(
                                      height: Get.height,
                                      width: Get.width,
                                      color: transportMedium == 'Car'
                                          ? Colors.transparent
                                          : Colors.grey.withOpacity(.8),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Car',
                                style: getDefaultFontStyle.copyWith(
                                  color: transportMedium == 'Car'
                                      ? Colors.black
                                      : Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              transportMedium = 'Uber';
                            });
                          },
                          child: Column(
                            children: [
                              Container(
                                height: Get.width / 5,
                                width: Get.width / 5,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: customBlack.withOpacity(.5)),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Image.asset(
                                        'assets/images/uber.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      height: Get.height,
                                      width: Get.width,
                                      color: transportMedium == 'Uber'
                                          ? Colors.transparent
                                          : Colors.grey.withOpacity(.8),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Uber',
                                style: getDefaultFontStyle.copyWith(
                                  color: transportMedium == 'Uber'
                                      ? Colors.black
                                      : Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              transportMedium = 'Rickshaw';
                            });
                          },
                          child: Column(
                            children: [
                              Container(
                                height: Get.width / 5,
                                width: Get.width / 5,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: customBlack.withOpacity(.5)),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Image.asset(
                                          'assets/images/maps/rickshaw.png'),
                                    ),
                                    Container(
                                      height: Get.height,
                                      width: Get.width,
                                      color: transportMedium == 'Rickshaw'
                                          ? Colors.transparent
                                          : Colors.grey.withOpacity(.8),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Rickshaw',
                                style: getDefaultFontStyle.copyWith(
                                  color: transportMedium == 'Rickshaw'
                                      ? Colors.black
                                      : Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              transportMedium = 'Bus';
                            });
                          },
                          child: Column(
                            children: [
                              Container(
                                height: Get.width / 5,
                                width: Get.width / 5,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: customBlack.withOpacity(.5)),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Image.asset(
                                          'assets/images/maps/privateCar.png'),
                                    ),
                                    Container(
                                      height: Get.height,
                                      width: Get.width,
                                      color: transportMedium == 'Bus'
                                          ? Colors.transparent
                                          : Colors.grey.withOpacity(.8),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Bus',
                                style: getDefaultFontStyle.copyWith(
                                  color: transportMedium == 'Bus'
                                      ? Colors.black
                                      : Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              transportMedium = 'CNG';
                            });
                          },
                          child: Column(
                            children: [
                              Container(
                                height: Get.width / 5,
                                width: Get.width / 5,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: customBlack.withOpacity(.5)),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Image.asset(
                                          'assets/images/maps/privateCar.png'),
                                    ),
                                    Container(
                                      height: Get.height,
                                      width: Get.width,
                                      color: transportMedium == 'CNG'
                                          ? Colors.transparent
                                          : Colors.grey.withOpacity(.8),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'CNG',
                                style: getDefaultFontStyle.copyWith(
                                  color: transportMedium == 'CNG'
                                      ? Colors.black
                                      : Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GetHorizontalCustomDivider(),
                  Padding(
                    padding: getGlobalPadding(),
                    child: Column(
                      children: [
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
                          height: 10,
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
                                  'Available seats',
                                  style: getDefaultFontStyle,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    if (numberOfSeatsAvailable > 0) {
                                      setState(() {
                                        numberOfSeatsAvailable--;
                                      });
                                    }
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: customBlack.withOpacity(.2),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    alignment: Alignment.center,
                                    child: Icon(
                                      FontAwesomeIcons.minus,
                                      size: 12,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: customBlack,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    numberOfSeatsAvailable.toString(),
                                    style: getDefaultFontStyle.copyWith(
                                        color: customWhite,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      numberOfSeatsAvailable++;
                                    });
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: customBlack.withOpacity(.2),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    alignment: Alignment.center,
                                    child: Icon(
                                      FontAwesomeIcons.plus,
                                      size: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
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
                                  'Schedule Time',
                                  style: getDefaultFontStyle,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: customBlack,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'now',
                                    style: getDefaultFontStyle.copyWith(
                                        color: customWhite,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: customBlack.withOpacity(.2),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  alignment: Alignment.center,
                                  child: Icon(
                                    FontAwesomeIcons.clock,
                                    size: 15,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              GetHorizontalCustomDivider(),
              Padding(
                padding: getGlobalPadding(),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Fare',
                          style: getDefaultFontStyle.copyWith(
                              fontWeight: FontWeight.w700, fontSize: 14),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GetCustomTextField(
                      textEditingController: FareTEC,
                      hintText:
                          "Enter the price you're asking for each available seat",
                      textInputType: TextInputType.number,
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
              GetHorizontalCustomDivider(),
              Padding(
                padding: getGlobalPadding(),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'License/ Number number',
                          style: getDefaultFontStyle.copyWith(
                              fontWeight: FontWeight.w700, fontSize: 14),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GetCustomTextField(
                      textEditingController: LisencePlateTEC,
                      hintText: "Enter your vehicles license/ number number",
                      textInputType: TextInputType.text,
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: InkWell(
                  onTap: () async {
                    setState(() {
                      isLoading = true;
                    });
                    await Future.delayed(Duration(seconds: 2));
                    bool isSuccess = await FirebaseFunctions().registerTrip(
                        username: "Bijoy ${Random().nextInt(1000).toString()}",
                        uid: '12345',
                        toIub: ToTEC.text.contains("IUB") ||
                                ToTEC.text.contains("iub") ||
                                ToTEC.text.contains("Iub") ||
                                ToTEC.text.contains("independent") ||
                                ToTEC.text.contains("Independent") ||
                                ToTEC.text.contains("Bangladesh") ||
                                ToTEC.text.contains("university")
                            ? true
                            : false,
                        from: FromTEC.text,
                        to: ToTEC.text,
                        description: DescriptionTEC.text,
                        transportMedium: transportMedium,
                        seatsAvailable: numberOfSeatsAvailable,
                        scheduledTime: scheduledTime,
                        fare: double.parse(FareTEC.text),
                        licenseNumber: LisencePlateTEC.text);
                    setState(() {
                      isLoading = false;
                    });
                    if (isSuccess) {
                      Get.back();
                      await showCustomSnackbar('Trip activated',
                          'Hi, Bijoy. Your trip has been registered and is now active.');
                    } else {
                      showCustomSnackbar(
                          'Error', 'Hi. An error occurred. Please try again!');
                    }
                  },
                  child: Container(
                    height: 50,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      border: Border.all(color: customBlack.withOpacity(.3)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: isLoading
                          ? GetCustomCircularProgressIndicator()
                          : Text(
                              'Register',
                              style: getDefaultFontStyle.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
