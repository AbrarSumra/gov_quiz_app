import 'package:flutter/material.dart';
import 'package:gov_quiz_app/app/constants/app_colors/app_colors.dart';

class AppBarScreen extends StatelessWidget implements PreferredSizeWidget {
  const AppBarScreen({
    super.key,
    this.appBarTitle = 'Quiz App',
    this.widget,
  });

  final String appBarTitle;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: AppColor.kAppOrangeColor,
      foregroundColor: AppColor.kBlackColor,
      title: Text(
        appBarTitle,
        style: const TextStyle(fontWeight: FontWeight.w500),
      ),
      leading: Builder(builder: (context) {
        return IconButton(
          icon: const Icon(
            Icons.menu,
          ),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        );
      }),
      actions: widget != null
          ? [
              widget!, // Only add this if widget is not null
            ]
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
