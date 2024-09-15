import 'package:flutter/material.dart';

import '../app_colors/app_colors.dart';

class KTextField extends StatelessWidget {
  const KTextField({
    super.key,
    this.placeHolder,
    this.icon,
    this.obSecure = false,
    this.enable = true,
    this.textColor = AppColor.kWhiteColor,
    this.controller,
    this.maxLength,
    this.maxLine = 1,
    this.suffixIcon,
    this.hintTextColor = AppColor.kGreyColor,
    this.keyboardType = TextInputType.text,
    this.borderColor,
    this.validator,
    this.onChanged,
  });

  final String? placeHolder;
  final IconData? icon;
  final IconData? suffixIcon;
  final bool obSecure;
  final TextEditingController? controller;
  final bool enable;
  final int? maxLength;
  final int maxLine;
  final Color hintTextColor;
  final TextInputType keyboardType;
  final Color? borderColor;
  final Color textColor;
  final String? Function(String?)? validator;
  final void Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    //var isDark = context.watch<ThemeProvider>().themeValue;

    return TextFormField(
      obscureText: obSecure,
      controller: controller,
      keyboardType: keyboardType,
      style: TextStyle(color: textColor),
      enabled: enable,
      maxLength: maxLength,
      maxLines: maxLine,
      validator: validator,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: placeHolder,
        counterText: '',
        hintStyle: TextStyle(color: hintTextColor),
        prefixIcon: Icon(
          icon,
          color: AppColor.kGreyColor,
        ),
        suffixIcon: Icon(
          suffixIcon,
          color: AppColor.kGreyColor,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: borderColor ?? Colors.grey,
            width: 1.0,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.kAppOrangeColor,
            width: 2.0,
          ),
        ),
      ),
    );
  }
}
