import 'package:cart/onBoardingScreens/onboard_screen_1.dart';
import 'package:cart/onBoardingScreens/onboard_screen_2.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardScreen2(),
    );
  }
}
