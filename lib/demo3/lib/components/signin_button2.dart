// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../utils/constants2.dart';

class SigninButton extends StatelessWidget {
  String text;
  final Function()? onPress;
  SigninButton({super.key, required this.text, this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: signinButton,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: TextButton(
        onPressed: onPress,
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
        ),
        child: Text(text),
      ),
    );
  }
}
