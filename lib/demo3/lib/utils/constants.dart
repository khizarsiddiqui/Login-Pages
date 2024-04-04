import 'package:flutter/material.dart';

Color primaryColor = Color(0xFF52A7A1);
Color darkColor = Color(0xFF37454e);
Color insideColor = Color(0xFFd6ebe4);
Color insideColor2 = Color(0xFF9fcbca);
Color signinButton = Color(0xFF264b43);
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
BoxDecoration bottomGradient() {
  return BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [Colors.white,Colors.lightBlueAccent, Colors.blueAccent, Colors.blue],
    ),
  );
}
