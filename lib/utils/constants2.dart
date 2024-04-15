import 'package:flutter/material.dart';

Color primaryColor = Color.fromARGB(255, 77, 162, 247);
Color darkColor = Color.fromARGB(255, 110, 195, 248);
Color insideColor2 = Color.fromARGB(255, 150, 214, 244);
Color insideColor = Color.fromARGB(255, 183, 231, 253);
Color signinButton = Color.fromARGB(255, 38, 150, 190);
Color dividerColor = Colors.black38;
BoxDecoration containerGradient() {
  return BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [darkColor, primaryColor, Colors.white],
    ),
  );
}