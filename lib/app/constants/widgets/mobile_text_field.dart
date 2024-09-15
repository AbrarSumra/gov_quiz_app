import 'package:flutter/material.dart';

import '../app_colors/app_colors.dart';

class KMobileTextField extends StatelessWidget {
  const KMobileTextField({
    super.key,
    this.hintText,
    this.icon,
    this.controller,
    this.maxLength = 10,
    this.maxLines,
    this.suffixIcon,
    this.hintTextColor = Colors.grey,
    this.iconColor = Colors.black,
    this.keyboardType = TextInputType.phone,
    this.fontColor = AppColor.kGreyColor,
    this.validator,
  });

  final String? hintText;
  final IconData? icon;
  final IconButton? suffixIcon;
  final TextEditingController? controller;
  final int maxLength;
  final int? maxLines;
  final Color hintTextColor;
  final Color fontColor;
  final Color iconColor;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.phone,
      style: TextStyle(color: fontColor),
      maxLength: maxLength,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        counterText: '',
        hintStyle: TextStyle(color: hintTextColor),
        suffixIcon: suffixIcon,
        prefixIcon: Icon(
          icon,
          color: iconColor,
        ),
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
