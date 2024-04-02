import 'package:cart/RegistrationScreens/sign_in_screen.dart';
import 'package:cart/onBoardingScreens/onboard_screen_1.dart';
import 'package:flutter/material.dart';

class OnBoardScreen3 extends StatefulWidget {
  const OnBoardScreen3({super.key});

  @override
  State<OnBoardScreen3> createState() => _OnBoardScreen3State();
}

class _OnBoardScreen3State extends State<OnBoardScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Column(
            children: <Widget>[
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      height: 550,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          "images/image_for_3.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: IconButton(
                      iconSize: 30,
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          const CircleBorder(),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(202, 158, 158, 158)),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OnBoardScreen1()),
                        );
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Color.fromARGB(255, 231, 229, 229),
                      ),
                    ),
                  )
                ],
              ),

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Track your orders in real time',
                    style: TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(255, 247, 239, 239),
                    ),
                  ),
                ],
              ),

              // White Spacing
              const SizedBox(
                height: 20,
              ),

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Know exactly where your package is and',
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 247, 239, 239),
                    ),
                  ),
                ],
              ),

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'when it will arrive. Stay informed and in',
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 247, 239, 239),
                    ),
                  ),
                ],
              ),

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'control.',
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 247, 239, 239),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const SignInScreen()),
                            );
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(5.0),
                                    side: const BorderSide(
                                        color: Colors.deepOrangeAccent))),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(
                                    Colors.black),
                          ),
                          child: const Text('Get Started',
                              style: TextStyle(
                                  height: 3,
                                  fontSize: 18.0,
                                  color: Colors.deepOrangeAccent))),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
