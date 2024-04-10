import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _obscureText =
      true; // this variable is used in the password textfield for visibility on/off

  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _userNameController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Welcome to cart! Please enter your details below.'),
                  ],
                ),

                const SizedBox(
                  height: 40,
                ),

                // Full name TextField
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _userNameController,
                    decoration: InputDecoration(
                      labelText: 'Full name',
                      border: OutlineInputBorder(
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
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(
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

                // Phone number TextField
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _phoneNumberController,
                    decoration: InputDecoration(
                      labelText: 'Phone number',
                      border: OutlineInputBorder(
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
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          }
                        );
                      },
                        icon: Icon(
                          _obscureText ? Icons.visibility : Icons.visibility_off
                        ),
                      )
                    ),
                  ),
                ),
              ],
            ),
          ),

          
          const SizedBox(
            height: 30,
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
                              side: const BorderSide(
                                color: Colors.black12)
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


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account ?"),
                TextButton(
                  onPressed: () {},
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ),
              ]
            ),
          ),
        ],
      ),
    );
  }
}
