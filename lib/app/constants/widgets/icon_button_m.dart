import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../app_colors/app_colors.dart';

class ButtonIconM extends StatelessWidget {
  const ButtonIconM({
    super.key,
    required this.title,
    required this.onTap,
    required this.icon,
    this.btnColor = AppColor.kGreyColor,
    this.isEnable = false,
  });

  final String title;
  final VoidCallback onTap;
  final Color btnColor;
  final bool isEnable;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
        decoration: BoxDecoration(
          color: isEnable ? AppColor.kGreyColor : Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: isEnable ? AppColor.kWhiteColor : AppColor.kGreyColor,
              size: 25,
            ),
            const SizedBox(width: 5),
            if (isEnable)
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
