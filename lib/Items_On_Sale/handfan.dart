import 'package:flutter/material.dart';

class HandFan extends StatefulWidget {
  const HandFan({super.key});

  @override
  State<HandFan> createState() => _HandFanState();
}

class _HandFanState extends State<HandFan> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Buy',
        )
      )
    );
  }
}