import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
                    Text(
                      'Welcome back!'
                      ),
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

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {}, 
                  child: const Text(
                    'Forgot Password?'
                  ), 
                ),
              ]
            ),
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
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: const BorderSide(color: Colors.black12)
                        )
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    child: const Text(
                      'Sign In',
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
    );
  }
}