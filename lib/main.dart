import 'package:flutter/material.dart';
import 'package:quize_app/splash_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SplashScreen(),
      ),
    ),
  );
}
