import 'package:consult/constants.dart';
import 'package:consult/screens/activation_screen.dart';
import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    // Position the skip button at the top left corner of the screen
    return Positioned(
      top: 20,
      left: 20,
      child: GestureDetector(
          // Display the "Skip" text and style
          child: const Text(
            "Skip",
            style: TextStyle(
                color: kSecondaryColor,
                fontSize: 15,
                fontWeight: FontWeight.w500),
          ),
          onTap: () {
            // when the button is tapped, navigate to the ActivationScreen.
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ActivationScreen(),
              ),
            );
          }),
    );
  }
}
