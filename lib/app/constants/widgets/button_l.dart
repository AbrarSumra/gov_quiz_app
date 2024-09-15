import 'package:flutter/material.dart';

import '../app_colors/app_colors.dart';

class ButtonL extends StatelessWidget {
  const ButtonL({
    super.key,
    required this.title,
    required this.onTap,
    this.btnColor = AppColor.kGreyColor,
    this.isLoading = false, // New parameter to control loading state
  });

  final String title;
  final VoidCallback onTap;
  final Color btnColor;
  final bool isLoading; // New parameter

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: btnColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: isLoading ? null : onTap, // Disable tap if loading
        child: isLoading
            ? const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.white),
              )
            : FittedBox(
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
