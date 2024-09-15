import 'package:flutter/material.dart';

import '../app_colors/app_colors.dart';

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
    this.isSelected = false, // Added isSelected parameter
  });

  final String title;
  final IconData icon;
  final VoidCallback? onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, bottom: 10),
      decoration: BoxDecoration(
        color: isSelected
            ? Colors.white
            : Colors.transparent, // Change bg color based on selection
        borderRadius: const BorderRadius.horizontal(
          left: Radius.circular(50),
        ),
      ),
      child: ListTile(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(50),
          ),
        ),
        leading: Icon(
          icon,
          color: isSelected
              ? AppColor.kGreyColor
              : Colors.white, // Change icon color based on selection
          size: 24,
        ),
        title: Text(
          title,
          style: TextStyle(
            color: isSelected
                ? AppColor.kGreyColor
                : Colors.white, // Change text color based on selection
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
