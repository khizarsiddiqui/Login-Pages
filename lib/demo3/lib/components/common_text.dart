//Common Text Widget

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonText extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight weight;
  final double fontSize;
  final TextAlign textAlign;
  final double lineHeight;
  final double letterSpacing;
  final TextOverflow overFlow;
  final int? maxLines;
  const CommonText({
    Key? key,
    required this.text,
    this.color,
    this.weight = FontWeight.w300,
    this.fontSize = 14.0,
    this.textAlign = TextAlign.left,
    this.overFlow = TextOverflow.visible,
    this.letterSpacing = 0.10,
    this.lineHeight = 1.2,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          overflow: overFlow,
        ),
        color: color, 
        fontWeight: weight,
        fontSize: fontSize,
        height: lineHeight,
        letterSpacing: letterSpacing,
      ),
    );
  }
}