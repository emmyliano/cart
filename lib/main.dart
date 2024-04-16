import 'package:cart/HomeScreens/bottom_tab_navigation.dart';
import 'package:cart/splash.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';


Future main() async {
  if (kIsWeb) {
    await Firebase.initializeApp(options: const FirebaseOptions(apiKey: "AIzaSyBRJd23y1fPS35uKOr15kzHP3kH58DYG0Y", appId: "1:412275156779:web:e626c47b440621ec87076e", messagingSenderId: "412275156779", projectId: "412275156779"));
  }
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
