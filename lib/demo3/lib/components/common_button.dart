import 'package:flutter/material.dart';
import '../utils/constants.dart';

class CommonButton extends StatelessWidget {
  final String text;
  final double? height;
  final double? width;
  final Color? color;
  final Function() onPress;
  CommonButton(
      {super.key,
      required this.text,
      required this.onPress,
      this.color,
      this.height,
      this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 50.0,
      width: width ?? 200.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color ?? primaryColor,
            color?.withOpacity(0.5) ?? primaryColor.withOpacity(0.5)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(40.0),
          onTap: onPress,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
