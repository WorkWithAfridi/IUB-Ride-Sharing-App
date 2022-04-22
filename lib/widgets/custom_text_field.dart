import 'package:bnans_iub/constants/app_theme.dart';
import 'package:flutter/material.dart';

class getCustomTextFieldWithIcon extends StatelessWidget {
  final TextEditingController textEditingController;
  final String labelText;
  final IconData icon;
  final bool isObscure;

  const getCustomTextFieldWithIcon(
      {Key? key,
      required this.textEditingController,
      required this.labelText,
      this.isObscure = false,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextField(
        cursorColor: customBlack,
        controller: textEditingController,
        decoration: InputDecoration(
          labelText: labelText,
          hintStyle: getDefaultFontStyle.copyWith(color: customBlack),
          focusColor: customBlack,
          prefixIcon: Icon(
            icon,
            color: customBlack,
            size: 16,
          ),
          labelStyle: getDefaultFontStyle.copyWith(color: customBlack),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
              color: customBlack.withOpacity(.5),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
              color: customBlack.withOpacity(.5),
            ),
          ),
        ),
        obscureText: isObscure,
      ),
    );
  }
}
