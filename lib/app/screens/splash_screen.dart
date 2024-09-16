import 'package:flutter/material.dart';
import 'package:gov_quiz_app/app/constants/app_colors/app_colors.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 2), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.kAppOrangeColor,
      body: Center(
        child: Text(
          'Govt Job Quizzes',
          style: TextStyle(
            fontSize: 40,
            color: AppColor.kBlackColor,
          ),
        ),
      ),
    );
  }
}
