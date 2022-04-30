import 'package:flutter/material.dart';

import '../../constants/app_theme.dart';
import '../../widgets/backButton.dart';

class EmergencyContacts extends StatefulWidget {
  const EmergencyContacts({Key? key}) : super(key: key);

  @override
  State<EmergencyContacts> createState() => _EmergencyContactsState();
}

class _EmergencyContactsState extends State<EmergencyContacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Emergency Contacts",
          style: getDefaultFontStyle,
        ),
        centerTitle: true,
        leading: GetBackButton(),
        elevation: 5,
      ),);
  }
}
