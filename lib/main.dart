import 'package:flutter/material.dart';
import 'sign_in_screen.dart'; // relative importing
import 'sign_up_screen.dart'; 
import 'forgot_password_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ForgotPasswordScreen(),
    );
  }
}
