import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gov_quiz_app/app/constants/app_colors/app_colors.dart';
import 'package:gov_quiz_app/app/constants/widgets/icon_button_m.dart';
import 'package:gov_quiz_app/app/screens/home_screen.dart';
import 'package:gov_quiz_app/app/screens/profile_screen.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({
    super.key,
    this.isSelected = -1,
  });

  final int isSelected;

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: AppColor.kWhiteColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ButtonIconM(
            title: 'Home',
            isEnable: widget.isSelected == 0 ? true : false,
            icon: Icons.home_outlined,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ));
            },
          ),
          ButtonIconM(
            title: 'Profile',
            icon: CupertinoIcons.profile_circled,
            isEnable: widget.isSelected == 1 ? true : false,
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen(),
                  ));
            },
          ),
          ButtonIconM(
            title: 'Setting',
            icon: CupertinoIcons.settings,
            isEnable: widget.isSelected == 2 ? true : false,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
