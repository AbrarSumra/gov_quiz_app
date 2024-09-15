import 'package:flutter/material.dart';
import 'package:gov_quiz_app/app/constants/app_colors/app_colors.dart';
import 'package:gov_quiz_app/app/screens/app_bar.dart';
import 'package:gov_quiz_app/app/screens/drawer_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kAppBackgroundColor,
      appBar: const AppBarScreen(),
      drawer: const DrawerScreen(selectedIndex: 0),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            children: [

              //
            ],
          ),
        ),
      ),
    );
  }
}
