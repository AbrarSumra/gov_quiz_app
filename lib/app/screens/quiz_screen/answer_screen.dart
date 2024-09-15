import 'package:flutter/material.dart';
import 'package:gov_quiz_app/app/constants/widgets/custom_outline_button.dart';
import 'package:gov_quiz_app/app/constants/widgets/custom_presseable_button.dart';

import '../../constants/app_colors/app_colors.dart';
import '../home_screen.dart';

class AnswerScreen extends StatelessWidget {
  const AnswerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kAppBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.close,
                      size: 30,
                      color: AppColor.kWhiteColor,
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 50),
              const Image(
                image: AssetImage('assets/pngs/trophy.png'),
                height: 150,
              ),
              const Text(
                'Congratulation !!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 21,
                  color: AppColor.kWhiteColor,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Your Score: 6/6',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 21,
                  color: AppColor.kWhiteColor,
                ),
              ),
              const SizedBox(height: 250),
              CustomOutlineButton(
                title: 'Submit',
                onTap: () {},
              ),
              const SizedBox(height: 20),
              PressableButton(
                title: 'Share',
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
