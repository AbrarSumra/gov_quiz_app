import 'package:flutter/material.dart';

import '../app_colors/app_colors.dart';

class CustomOutlineButton extends StatefulWidget {
  const CustomOutlineButton({
    super.key,
    required this.title,
    this.onTap,
    this.btnColor = AppColor.kAppOrangeColor,
    this.fontColor = AppColor.kWhiteColor,
    this.isLoading = false,
  });

  final String title;
  final Function()? onTap;
  final Color btnColor;
  final Color fontColor;
  final bool isLoading;

  @override
  State<CustomOutlineButton> createState() => _CustomOutlineButtonState();
}

class _CustomOutlineButtonState extends State<CustomOutlineButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: GestureDetector(
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
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: widget.btnColor, width: 1),
            ),
            alignment: Alignment.center,
            child: Text(
              widget.title,
              style: TextStyle(
                color: widget.btnColor,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
