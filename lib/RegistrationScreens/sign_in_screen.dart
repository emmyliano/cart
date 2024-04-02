import 'package:cart/RegistrationScreens/forgot_password_screen.dart';
import 'package:cart/RegistrationScreens/sign_up_screen.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _obscureText =
      true; // this variable is used in the password textfield for visibility on/off

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Welcome back!'),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
                decoration: InputDecoration(
              //enabledBorder: ,
              labelText: 'Email',
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            )),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              obscureText: true,
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
                      });
                    },
                    icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ForgotPasswordScreen()));
                },
                child: const Text(
                  'Forgot Password ?',
                  style: TextStyle(
                    color: Colors.orange,
                  ),
                ),
              ),
            ]),
          ),
          SizedBox(
            width: 350,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: MaterialStateProperty
                            .all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: const BorderSide(color: Colors.black12))),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                      ),
                      child: const Text('Sign In',
                          style: TextStyle(
                              height: 3, fontSize: 18.0, color: Colors.white))),
                ),
              ],
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text("Don't have an account ?"),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUpScreen()),
                );
              },
              child: const Text(
                'Sign Up',
                style: TextStyle(
                  color: Colors.orange,
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
