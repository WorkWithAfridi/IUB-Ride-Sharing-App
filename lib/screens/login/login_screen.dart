import 'package:bnans_iub/constants/app_theme.dart';
import 'package:bnans_iub/functions/custom_snackbar.dart';
import 'package:bnans_iub/routes/routes.dart';
import 'package:bnans_iub/widgets/custom_text_field.dart';
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
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Bnans',
                              style: getMarkerFontStyle.copyWith(
                                  color: customBlack, fontSize: 30, height: .8),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '• Safer ',
                                  style: getDefaultFontStyle.copyWith(
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  '• Faster ',
                                  style: getDefaultFontStyle.copyWith(
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  '• Cheaper ',
                                  style: getDefaultFontStyle.copyWith(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Sign in',
                              style: getMarkerFontStyle.copyWith(
                                  color: customBlack, fontSize: 18),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            getCustomTextFieldWithIcon(
                              textEditingController: emailTEC,
                              labelText: "Enter email address...",
                              icon: Icons.email,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            getCustomTextFieldWithIcon(
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
                                      value: false,
                                      activeColor: primaryColor,
                                      onChanged: (value) {},
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Text(
                                      "Keep me logged in",
                                      style: getDefaultFontStyle,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Get.offNamed(Routes.getHomescreenRoute);
                                showCustomSnackbar(
                                  "Hi, Kyoto",
                                  "Welcome aboard on BNANS. \nHave a save journey! :)",
                                );
                              },
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
                                    'Sign in',
                                    style: getMarkerFontStyle.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: customBlack,
                                        fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Forgot your password? ",
                                  style: getDefaultFontStyle.copyWith(fontSize: 13),
                                ),
                                Text(
                                  "Get help logging in.",
                                  style: getDefaultFontStyle.copyWith(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
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
