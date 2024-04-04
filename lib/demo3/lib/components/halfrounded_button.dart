// ignore_for_file: must_be_immutable

import 'common_text.dart';
import 'package:flutter/material.dart';

class HalfRoundedButton extends StatelessWidget {
  String text;
  Color? textColor;
  Color? outlineColor;
  Color? containerColor;
  final Function() onPress;
  HalfRoundedButton(
      {super.key,
      required this.text,
      required this.onPress,
      this.containerColor,
      this.outlineColor,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
        border: Border.all(color: outlineColor ?? Colors.black, width: 2),
        color: containerColor ?? Colors.white,
      ),
      child: TextButton(
        child: CommonText(
          text: text,
          weight: FontWeight.bold,
          color: textColor ?? Colors.black,
        ),
        onPressed: onPress,
      ),
    );
  }
}
