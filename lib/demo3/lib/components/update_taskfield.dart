// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class UpdateTaskField extends StatelessWidget {
  String labelText;
  Icon? startIcon;
  Icon? endIcon;
  int? minLines;
  int? maxLines;
  bool? readOnly = false;
  Function()? onPress;
  TextEditingController? controller;

  UpdateTaskField({
    Key? key,
    required this.labelText,
    this.startIcon,
    this.endIcon,
    this.minLines,
    this.maxLines,
    this.onPress,
    this.readOnly,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      minLines: minLines,
      maxLines: maxLines,
      readOnly: readOnly ?? false,
      controller: controller,
      onTap: onPress,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        label: Text(
          labelText,
          style: TextStyle(fontSize: 14),
        ),
        prefixIcon: startIcon,
        suffixIcon: endIcon,
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
          borderSide: BorderSide(color: Colors.grey.shade400, width: 1.0),
        ),
      ),
    );
  }
}
