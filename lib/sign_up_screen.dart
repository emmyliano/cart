import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                  ),
                ),
                const Text('Welcome to cart! Please enter your details below.'),

                const SizedBox(
                  height: 50,
                ),


                // Full name TextField
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Full name',
                      focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 2.0,
                        ),
                      borderRadius: BorderRadius.circular(10),
                      ),
                    )
                  ),
                ),


                const SizedBox(
                  height: 20,
                ),

                // Email TextField
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 2.0,
                        ),
                      borderRadius: BorderRadius.circular(10),
                      ),
                    )
                  ),
                ),


                // Phone number TextField
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Phone number',
                      focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 2.0,
                        ),
                      borderRadius: BorderRadius.circular(10),
                      ),
                    )
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                // Password TextField
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 2.0,
                        ),
                      borderRadius: BorderRadius.circular(10),
                      ),
                    )
                  ),
                ),
              ],
            ),
          ),
          
          Column(
            children: [
              SizedBox(
                width: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: const BorderSide(color: Colors.black12)
                            )
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                        ),
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            height: 3,
                            fontSize: 18.0,
                            color: Colors.white
                            )
                        )
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Already have an account? "
              ),

              TextButton(
                onPressed: () {},
                child: const Text(
                  'Sign In',
                  style: TextStyle(
                    color: Colors.orange,
                  ),
                ),
              ),
            ]
          ),
        ],
      ),
    );
  }
}
