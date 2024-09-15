import 'package:flutter/material.dart';

import '../constants/app_colors/app_colors.dart';
import 'app_bar.dart';
import 'drawer_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kAppBackgroundColor,
      appBar: const AppBarScreen(),
      drawer: const DrawerScreen(selectedIndex: 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            children: [
              Center(
                child: Text('Profile Page 1'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
