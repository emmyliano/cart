import 'package:flutter/material.dart';

class PeachCrossBag extends StatefulWidget {
  const PeachCrossBag({super.key});

  @override
  State<PeachCrossBag> createState() => _PeachCrossBagState();
}

class _PeachCrossBagState extends State<PeachCrossBag> {
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