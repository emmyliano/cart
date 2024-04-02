import 'package:cart/RegistrationScreens/sign_in_screen.dart';
import 'package:cart/RegistrationScreens/sign_up_screen.dart';
import 'package:flutter/material.dart';

class OnBoardScreen2 extends StatefulWidget {
  const OnBoardScreen2({super.key});

  @override
  State<OnBoardScreen2> createState() => _OnBoardScreen2State();
}

class _OnBoardScreen2State extends State<OnBoardScreen2> {
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
                      height: 500,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          "images/Lady_Holding_Bag.png",
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
                          MaterialPageRoute(builder: (context) => const SignUpScreen()),
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
                    'Affordability meets quality',
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
                    'Discover a wide range of products at',
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
                    'unbeatable prices. From trendy fashion to',
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
                    "essential gadgets, we've got your budget in",
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
                    'mind.',
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 247, 239, 239),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignInScreen()),
                          );
                        },
                        child: const Text('Skip   >',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.amber,
                            )))
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
