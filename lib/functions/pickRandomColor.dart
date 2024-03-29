import 'dart:math';

import 'package:flutter/material.dart';

List<Color> listOfColors = [
  Colors.amber,
  Colors.pink,
  Colors.green,
  Colors.orange,
  Colors.yellow,
  Colors.blue,
  Colors.cyan,
  Colors.red,
  Colors.deepOrange,
  Color(0xff10BBEF),
  Color(0xffF2C5E0),
  Color(0xffD43790),
  Color(0xffDB1F48),
  Color(0xffE5DDC8),
  Color(0xffD8A7B1),
  Color(0xffB6E2D3),
  Color(0xffEF7C8E)
];

Color getRandomColor() {
  int listIndex = Random().nextInt(listOfColors.length);
  return listOfColors[listIndex];
}

getRandomTransportVehicle() {
  var randomIndex = Random().nextInt(4);
  if (randomIndex == 0) return 'assets/images/maps/cng.png';
  if (randomIndex == 1) return 'assets/images/maps/motorbike.png';
  if (randomIndex == 2) return 'assets/images/maps/privateCar.png';
  if (randomIndex == 3) return 'assets/images/maps/rickshaw.png';
  if (randomIndex == 4) return 'assets/images/maps/taxi.png';
}
