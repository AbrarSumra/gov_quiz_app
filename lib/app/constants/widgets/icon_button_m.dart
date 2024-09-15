import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../app_colors/app_colors.dart';

class ButtonIconM extends StatelessWidget {
  const ButtonIconM({
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
      width: 200,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: btnColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(width: 10),
            const Icon(
              CupertinoIcons.right_chevron,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
