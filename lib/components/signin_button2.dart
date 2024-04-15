// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../utils/constants.dart';

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
            topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
      ),
      child: TextButton(
        onPressed: () {
          Fluttertoast.showToast(
              msg: "Sign In Successful",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              textColor: Colors.black,
              backgroundColor: Colors.white,
              fontSize: 16);
        },
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
        ),
        child: Text(text),
      ),
    );
  }
}
