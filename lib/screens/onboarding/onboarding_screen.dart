import 'package:bnans_iub/constants/app_theme.dart';
import 'package:bnans_iub/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController pageController = PageController();
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customWhite,
      body: Container(
        height: Get.height,
        width: Get.width,
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  PageView(
                    physics: NeverScrollableScrollPhysics(),
                    controller: pageController,
                    children: [
                      Container(
                        height: double.infinity,
                        width: Get.width,
                        child: Image.asset(
                          'assets/images/maps/map (6).jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        height: double.infinity,
                        width: Get.width,
                        child: Image.asset(
                          'assets/images/maps/map (3).jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        height: double.infinity,
                        width: Get.width,
                        child: Image.asset(
                          'assets/images/maps/map (4).jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: Get.height,
                    width: Get.width,
                    color: Colors.black.withOpacity(.5),
                  ),
                ],
              ),
            ),
            Container(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  getBanner(),
                  Container(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            if (pageIndex != 0) {
                              setState(() {
                                pageIndex--;
                                pageController.animateToPage(pageIndex,
                                    duration: Duration(milliseconds: 400),
                                    curve: Curves.linear);
                              });
                            } else {
                              setState(() {
                                pageIndex = 2;
                                pageController.animateToPage(pageIndex,
                                    duration: Duration(milliseconds: 400),
                                    curve: Curves.linear);
                              });
                            }
                          },
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          child: Container(
                            height: 50,
                            alignment: Alignment.center,
                            width: Get.width / 4,
                            child: Text(
                              pageIndex != 0 ? "Back" : "Skip",
                              style: getDefaultFontStyle.copyWith(
                                  fontWeight: pageIndex == 0
                                      ? FontWeight.bold
                                      : FontWeight.normal),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                color:
                                    pageIndex == 0 ? customBlack : Colors.grey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                color:
                                    pageIndex == 1 ? customBlack : Colors.grey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                color:
                                    pageIndex == 2 ? customBlack : Colors.grey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            )
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            if (pageIndex < 2) {
                              setState(() {
                                pageIndex++;
                                pageController.animateToPage(
                                  pageIndex,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.linearToEaseOut,
                                );
                              });
                            } else {
                              Get.offNamed(Routes.getLoginRoute);
                            }
                          },
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          child: Container(
                            height: 50,
                            alignment: Alignment.center,
                            width: Get.width / 4,
                            child: Text(
                              pageIndex == 2 ? "Get started" : "Next",
                              style: getDefaultFontStyle.copyWith(
                                  fontWeight: pageIndex == 2
                                      ? FontWeight.bold
                                      : FontWeight.normal),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  getBanner() {
    return Container(
        height: 105,
        padding: getGlobalPadding(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              pageIndex == 0
                  ? "Title 1"
                  : pageIndex == 1
                      ? "Title 2"
                      : pageIndex == 2
                          ? "Title 3"
                          : "",
              style:
                  getMarkerFontStyle.copyWith(fontSize: 20, color: customBlack),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              pageIndex == 0
                  ? 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin'
                  : pageIndex == 1
                      ? 'Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellentesque felis.'
                      : pageIndex == 2
                          ? 'Praesent dapibus, neque id cursus faucibus, tortor neque egestas auguae, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.'
                          : "",
              style: getDefaultFontStyle.copyWith(
                  fontSize: 14, color: customBlack.withOpacity(.6)),
              textAlign: TextAlign.center,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ));
  }
}
