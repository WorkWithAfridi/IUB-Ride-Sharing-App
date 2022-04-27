import 'package:bnans_iub/constants/app_theme.dart';
import 'package:flutter/material.dart';

class GetCustomTextFieldWithIcon extends StatelessWidget {
  final TextEditingController textEditingController;
  final String labelText;
  final IconData icon;
  final bool isObscure;

  const GetCustomTextFieldWithIcon(
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

class GetCustomTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPass;
  final String hintText;
  final TextInputType textInputType;
  final int maxLines;

  const GetCustomTextField(
      {Key? key,
      required this.textEditingController,
      this.isPass = false,
      required this.hintText,
      required this.textInputType,
      required this.maxLines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderSide: Divider.createBorderSide(context, color: customBlack),
    );
    return TextField(
      style: getDefaultFontStyle,
      cursorColor: Colors.white54,
      controller: textEditingController,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: getDefaultFontStyle,
        border: inputBorder,
        focusedBorder: inputBorder,
        enabledBorder: inputBorder,
        fillColor: Colors.white10,
        filled: true,
        contentPadding: const EdgeInsets.all(8),
      ),
      keyboardType: textInputType,
      obscureText: isPass,
    );
  }
}
