//Common Textfield

// ignore_for_file: must_be_immutable, unused_import

import 'package:flutter/material.dart';
import '../utils/constants.dart';

class LoginTextField extends StatefulWidget {
  String? hintText;
  bool? isPass = false;
  LoginTextField({
    super.key,
    this.isPass,
    required this.myController,
    this.hintText,
  });

  final TextEditingController myController;

  @override
  State<LoginTextField> createState() => _LoginTextFieldState();
}

class _LoginTextFieldState extends State<LoginTextField> {
  bool _isObscure = true;
  bool isValidForm = false;

  @override
  Widget build(BuildContext context) {
    return widget.isPass == true
        ? TextFormField(
            controller: widget.myController,
            obscureText: _isObscure,
            // textAlign: TextAlign.center,
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.done,
            style: TextStyle(fontSize: 13),
            decoration: InputDecoration(
              isDense: true, // Added this
              filled: true,
              fillColor: Colors.grey.shade100,
              hintStyle: TextStyle(color: Colors.grey),
              // prefixIcon: Icon(Icons.lock_outline_rounded, color: Colors.grey),
              suffixIcon: IconButton(
                  color: Colors.grey,
                  icon: Icon(_isObscure
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined),
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  }),
              hintText: widget.hintText,
              // label: Text("Password"),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                borderSide: BorderSide(
                  width: 0.5,
                  color: Colors.grey.shade100,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                borderSide: BorderSide(width: 2, color: Colors.grey.shade300),
              ),
            ),
            validator: (inputValue) {
              if (inputValue!.isEmpty) {
                return "Enter your ${widget.hintText}";
              }
              return null;
            },
          )
        : TextFormField(
            controller: widget.myController,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            style: TextStyle(fontSize: 13),
            decoration: InputDecoration(
              isDense: true, filled: true,
              fillColor: Colors.grey.shade100,
              hintStyle: TextStyle(color: Colors.grey),
              // prefixIcon:
              //     Icon(Icons.person_outline_rounded, color: Colors.grey),
              hintText: widget.hintText,
              // label: Text("Username"),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                borderSide: BorderSide(
                  width: 0.5,
                  color: Colors.grey.shade100,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                borderSide: BorderSide(width: 2, color: Colors.grey.shade300),
              ),
            ),
            validator: (inputValue) {
              if (inputValue!.isEmpty) {
                return "Enter Your ${widget.hintText}";
              }
              return null;
            },
          );
  }
}
