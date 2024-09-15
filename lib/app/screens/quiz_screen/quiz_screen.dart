import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gov_quiz_app/app/screens/quiz_screen/answer_screen.dart';
import '../../constants/widgets/custom_presseable_button.dart';
import '../../data/questions.dart';
import '../home_screen.dart';
import '../../constants/app_colors/app_colors.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _seconds = 60; // Total time in seconds
  Timer? _timer;
  int _currentQuestionIndex = 0; // Track the current question index

  // Start the timer
  void _startTimer() {
    _timer?.cancel(); // Cancel any existing timer
    _seconds = 60; // Reset the timer to the initial value
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_seconds > 0) {
        setState(() {
          _seconds--;
        });
      } else {
        _timer?.cancel(); // Stop the timer when it reaches 0
      }
    });
  }

  // Format seconds into MM:SS format
  String _formatTime(int seconds) {
    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  double _getProgress() {
    return (60 - _seconds) / 60;
  }

  // Handle answer tap
  void _onAnswerTap() {
    setState(() {
      if (_currentQuestionIndex < questions.length - 1) {
        _currentQuestionIndex++;
      } else {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => AnswerScreen(),
            ));
      }
      _startTimer(); // Restart the timer when an answer is tapped
    });
  }

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancel the timer if the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Get the current question
    final currentQuestion = questions[_currentQuestionIndex];

    return Scaffold(
      backgroundColor: AppColor.kAppBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            children: [
              const SizedBox(height: 20),
              LinearProgressIndicator(
                value: _getProgress(),
                backgroundColor: Colors.grey[300],
                valueColor: const AlwaysStoppedAnimation<Color>(
                    AppColor.kAppOrangeColor),
                minHeight: 10,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const SizedBox(width: 10),
                      const Icon(
                        Icons.alarm,
                        size: 25,
                        color: AppColor.kWhiteColor,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        _formatTime(_seconds),
                        style: const TextStyle(
                          fontSize: 16,
                          color: AppColor.kAppOrangeColor,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Que No. ${_currentQuestionIndex + 1}/${questions.length}',
                    style: const TextStyle(
                      fontSize: 16,
                      color: AppColor.kWhiteColor,
                    ),
                  ),
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
              const SizedBox(height: 30),
              const SizedBox(height: 30),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    currentQuestion.text, // Display current question
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 21,
                      color: AppColor.kWhiteColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Display answer buttons
              ...currentQuestion.answers.map((answer) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: PressableButton(
                    title: answer,
                    onTap: _onAnswerTap,
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
