// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class SocialMedia extends StatelessWidget {
  String? image;
  SocialMedia({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      height: 50,
      width: w * 0.25,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade200, width: 1),
        borderRadius: BorderRadius.all(Radius.zero),
      ),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          foregroundColor: Colors.black,
        ),
        child: Image.asset(image.toString()),
      ),
    );
  }
}
