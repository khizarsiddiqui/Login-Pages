import 'package:flutter/material.dart';

import 'common_text.dart';

class PayrollText extends StatelessWidget {
  final String textLeft;
  final String textRight;
  final Color? color;
  const PayrollText({
    Key? key,
    required this.textLeft,
    required this.textRight,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CommonText(
          text: textLeft,
          fontSize: 16,
        ),
        CommonText(
          text: textRight,
          fontSize: 16,
          weight: FontWeight.bold,
        ),
      ],
    );
  }
}
