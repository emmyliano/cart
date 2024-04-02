import 'package:cart/RegistrationScreens/sign_in_screen.dart';
import 'package:flutter/material.dart';


class OnBoardScreen1 extends StatefulWidget {
  const OnBoardScreen1({super.key});

  @override
  State<OnBoardScreen1> createState() => _OnBoardScreen1State();
}

class _OnBoardScreen1State extends State<OnBoardScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 550,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "images/Lady_Holding_Bag.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Swift Delivery',
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
                    'Experience the joy of getting your orders in',
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
                    'record time. We prioritize swift delivery to',
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
                    "bring your purchases right to your doorstep.",
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
