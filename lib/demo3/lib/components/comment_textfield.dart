// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CommentTextField extends StatelessWidget {
  
  String hint;
  final Function() onPress;


  CommentTextField({
    super.key,
    required this.hint,
    required this.onPress,
    required this.controller,
  });

  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          icon: Icon(Icons.send),
          color: Colors.blue,
          onPressed: onPress,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          borderSide: BorderSide(color: Colors.grey.shade600, width: 2.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          borderSide: BorderSide(color: Colors.grey.shade300, width: 1.0),
        ),
        hintText: hint,
      ),
    );
  }
}
