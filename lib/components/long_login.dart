// ignore_for_file: must_be_immutable

import 'package:demo1/components/common_text.dart';
import 'package:flutter/material.dart';

class LongLogin extends StatelessWidget {
  String text;
  Color? textColor;
  Color? outlineColor;
  Color? containerColor;
  final Function() onPress;
  LongLogin({
    super.key,
    required this.text,
    required this.onPress,
    this.containerColor,
    this.outlineColor,
    this.textColor
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
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
