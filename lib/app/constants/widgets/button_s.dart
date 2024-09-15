import 'package:flutter/material.dart';

import '../app_colors/app_colors.dart';

class ButtonS extends StatelessWidget {
  const ButtonS({
    super.key,
    required this.title,
    required this.onTap,
    this.btnColor = AppColor.kGreyColor,
  });

  final String title;
  final VoidCallback onTap;
  final Color btnColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: btnColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: onTap,
        child: FittedBox(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
