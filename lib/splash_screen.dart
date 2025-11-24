import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen(this.quizStart, {super.key});

  final void Function() quizStart;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: Color(0xaaffffff),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          OutlinedButton.icon(
            onPressed: quizStart,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 16,
              ),
            ),
            icon: const Icon(Icons.arrow_right_alt, color: Colors.white),
            label: const Text("Start quiz"),
          ),
        ],
      ),
    );
  }
}
