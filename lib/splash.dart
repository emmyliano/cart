import 'package:flutter/material.dart';
import 'package:cart/onBoardingScreens/onboard_screen_1.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
  }

  _navigatePushToHome() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const OnBoardScreen1()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
