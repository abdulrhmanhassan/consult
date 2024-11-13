import 'package:consult/screens/on_boarding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Consult());
}

class Consult extends StatelessWidget {
  const Consult({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OnBoardingScreen(),
    );
  }
}
