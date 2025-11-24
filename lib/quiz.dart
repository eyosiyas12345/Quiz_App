import 'package:flutter/material.dart';
import 'package:quize_app/splash_screen.dart';
import 'package:quize_app/quiz_questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  late Widget activeScreen;

  @override
  void initState() {
    activeScreen = SplashScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuizQuestions();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xff460252), Color(0xffa31eba)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
