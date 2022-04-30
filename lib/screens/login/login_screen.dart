import 'package:bnans_iub/constants/app_theme.dart';
import 'package:bnans_iub/functions/custom_snackbar.dart';
import 'package:bnans_iub/routes/routes.dart';
import 'package:bnans_iub/widgets/customTextField.dart';
import 'package:bnans_iub/widgets/getLoadingAnimation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailTEC = TextEditingController();
  TextEditingController passwordTEC = TextEditingController();

  bool isLoading = false;
  bool keepUserLoggedIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(
          backgroundColor: customBlack,
        ),
      ),
      body: Stack(
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
          Container(
            height: Get.height,
            width: Get.width,
            color: Colors.black.withOpacity(.5),
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: getGlobalPadding(),
                  child: Card(
                    elevation: 6,
                    child: Container(
                      decoration: BoxDecoration(
                        color: customWhite,
                        border: Border.all(
                          color: customBlack.withOpacity(.5),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 60),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Bnans',
                              style: getMarkerFontStyle.copyWith(
                                  color: customBlack, height: .8),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '• Safer ',
                                  style: getDefaultFontStyle,
                                ),
                                Text(
                                  '• Faster ',
                                  style: getDefaultFontStyle,
                                ),
                                Text(
                                  '• Cheaper ',
                                  style: getDefaultFontStyle,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Sign in',
                              style: getMarkerFontStyle.copyWith(
                                  color: customBlack, fontSize: 20),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            GetCustomTextFieldWithIcon(
                              textEditingController: emailTEC,
                              labelText: "Enter email address...",
                              icon: Icons.email,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            GetCustomTextFieldWithIcon(
                              textEditingController: passwordTEC,
                              labelText: "Enter password...",
                              icon: Icons.password,
                              isObscure: true,
                            ),
                            Container(
                              height: 40,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    width: 20,
                                    child: Checkbox(
                                      value: keepUserLoggedIn,
                                      activeColor: primaryColor,
                                      onChanged: (value) {
                                        setState(() {
                                          keepUserLoggedIn = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        keepUserLoggedIn = !keepUserLoggedIn;
                                      });
                                    },
                                    child: Text(
                                      "Keep me logged in",
                                      style: getDefaultFontStyle,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () async {
                                setState(() {
                                  isLoading = true;
                                });
                                await Future.delayed(Duration(seconds: 2));
                                Get.offNamed(Routes.getIntroductionRoute);
                                showCustomSnackbar(
                                  "Hi, Kyoto",
                                  "Welcome aboard on BNANS. \nHave a save journey! :)",
                                );
                                setState(() {
                                  isLoading = false;
                                });
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
                                          'Sign in',
                                          style: getDefaultFontStyle.copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                          ),
                                        ),
                                ),
                              ),
                            ),
                            // SizedBox(
                            //   height: 8,
                            // ),
                            // InkWell(
                            //   onTap: () async {},
                            //   child: Container(
                            //     height: 50,
                            //     width: Get.width,
                            //     decoration: BoxDecoration(
                            //       color: customBlack,
                            //       border: Border.all(
                            //           color: customBlack.withOpacity(.5)),
                            //       borderRadius: BorderRadius.circular(5),
                            //     ),
                            //     child: Center(
                            //       child: Text(
                            //         'Sign up',
                            //         style: getMarkerFontStyle.copyWith(
                            //             fontWeight: FontWeight.bold,
                            //             color: primaryColor,
                            //             fontSize: 20),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Forgot your password? ",
                                  style: getDefaultFontStyle,
                                ),
                                Text(
                                  "Get help logging in.",
                                  style: getDefaultFontStyle.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Don't have an account?",
                                  style: getDefaultFontStyle,
                                ),
                                Text(
                                  " Sign up.",
                                  style: getDefaultFontStyle.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: primaryColor),
                                ),
                              ],
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
        ],
      ),
    );
  }
}
