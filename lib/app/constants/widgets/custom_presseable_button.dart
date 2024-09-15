import 'package:flutter/material.dart';

import '../app_colors/app_colors.dart';

class PressableButton extends StatefulWidget {
  const PressableButton({
    super.key,
    required this.title,
    this.onTap,
    this.btnColor = AppColor.kGreyColor,
    this.fontColor = AppColor.kWhiteColor,
    this.isLoading = false,
  });

  final String title;
  final Function()? onTap;
  final Color btnColor;
  final Color fontColor;
  final bool isLoading;

  @override
  State<PressableButton> createState() => _PressableButtonState();
}

class _PressableButtonState extends State<PressableButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      onTapDown: (_) {
        setState(() {
          _isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          _isPressed = false;
        });
      },
      onTapCancel: () {
        setState(() {
          _isPressed = false;
        });
      },
      child: AnimatedScale(
        scale: _isPressed ? 0.9 : 1.0, // Scaling the button
        duration: const Duration(milliseconds: 50),
        child: Container(
          height: 50,
          width: 160,
          decoration: BoxDecoration(
            color: widget.btnColor,
            borderRadius: BorderRadius.circular(12),
          ),
          alignment: Alignment.center,
          child: Text(
            widget.title,
            style: TextStyle(
              color: widget.fontColor,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
