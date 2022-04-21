import 'package:bnans_iub/constants/appTheme.dart';
import 'package:bnans_iub/widgets/customTextField.dart';
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
              'assets/images/maps/map (5).jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: Get.height - 100,
            width: Get.width - 50,
            decoration: BoxDecoration(
              color: customWhite,
              border: Border.all(
                color: customBlack.withOpacity(.5),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: Get.height / 4.5,
                  ),
                  Text(
                    'Bnans',
                    style: getMarkerFontStyle.copyWith(
                      color: customBlack,
                      fontSize: 30,
                    ),
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
                    height: 5,
                  ),
                  getCustomTextFieldWithIcon(
                    textEditingController: passwordTEC,
                    labelText: "Enter password...",
                    icon: Icons.email,
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
                  Container(
                    height: 50,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      border: Border.all(color: customBlack.withOpacity(.5)),
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
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
