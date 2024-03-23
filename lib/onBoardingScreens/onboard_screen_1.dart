import 'package:cart/sign_in_screen.dart';
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
      body: Column( 
        children: <Widget>[
          Image.asset(".assets/images/Lady_Holding_Bag.png", width: 500, height: 1000),
          
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Affordability meets quality',
                style: TextStyle(
                  fontFamily: 'Times New Roman',
                  fontSize: 15,
                  color: Color.fromARGB(255, 247, 239, 239),
                ),
              ),
            ],
          ),

          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '''Discover a wide range of products at
            unbeatable prices. From trendy fashion to
            essential gadgets, we've got your budget in 
            mind''',
                style: TextStyle(
                  fontFamily: 'Times New Roman',
                  fontSize: 11,
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
                TextButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignInScreen()),
                  );
                },
                child: const Text(
                  'Skip   >',
                  style: TextStyle(
                  fontFamily: 'Times New Roman',
                  fontSize: 14,
                  color: Color.fromARGB(255, 247, 239, 239),
                  ) 
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}