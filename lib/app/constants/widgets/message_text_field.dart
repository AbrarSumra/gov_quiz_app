import 'package:flutter/material.dart';

import '../app_colors/app_colors.dart';

class MessageTextField extends StatelessWidget {
  const MessageTextField({
    super.key,
    this.hintText,
    this.controller,
    this.maxLines,
    this.suffixIcon,
    this.hintTextColor = Colors.grey,
    this.keyboardType = TextInputType.phone,
    this.validator,
  });

  final String? hintText;
  final IconData? suffixIcon;
  final TextEditingController? controller;
  final int? maxLines;
  final Color hintTextColor;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.phone,
      style: const TextStyle(color: AppColor.kGreyColor, fontSize: 21),
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        counterText: '',
        hintStyle: TextStyle(color: hintTextColor, fontSize: 21),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.kGreyColor,
            width: 2.0,
          ),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.kGreyColor,
            width: 2.0,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.kAppOrangeColor,
            width: 2.0,
          ),
        ),
      ),
      validator: validator,
    );
  }
}
