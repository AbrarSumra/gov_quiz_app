import 'package:flutter/material.dart';
import 'package:gov_quiz_app/app/screens/app_bar.dart';
import 'package:gov_quiz_app/app/screens/drawer_screen.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarScreen(appBarTitle: 'Setting'),
      drawer: DrawerScreen(),
      body: SafeArea(
        child: ListView(
          children: [
            Text('Setting'),
          ],
        ),
      ),
    );
  }
}
