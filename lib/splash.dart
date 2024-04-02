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
    _navigatePushToHome();
  }

  _navigatePushToHome() async {
    await Future.delayed(const Duration(milliseconds: 4500), () {});
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const OnBoardScreen1()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 750,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "images/splash_screen.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
