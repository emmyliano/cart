import 'package:cart/onBoardingScreens/control_pages.dart';
import 'package:flutter/material.dart';


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
        MaterialPageRoute(builder: (context) => const ControlPages()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
