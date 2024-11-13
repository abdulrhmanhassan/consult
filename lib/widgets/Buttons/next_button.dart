// Import Import project files
import 'package:consult/constants.dart';
import 'package:consult/screens/activation_screen.dart';
import 'package:consult/widgets/list_of_data.dart';

// Import libraries
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    super.key,
    required PageController pageController,
    required int pageIndex,
  })  : _pageIndex = pageIndex,
        _pageController = pageController;

  // Define final variables
  // the current controller
  final PageController _pageController;
  // index of the page
  final int _pageIndex;

  @override
  Widget build(BuildContext context) {
    // Create a circle containing a button icon
    return CircleAvatar(
      radius: 30,
      backgroundColor: kPrimerColor,
      // Create the icon button inside the circle
      child: IconButton(
        color: Colors.white,
        // Select icon based on current index:
        // if last page shows special icon,
        // otherwise shows jump arrow.
        icon: _pageIndex == data.length - 1
            ? const Icon(FontAwesomeIcons.arrowRightFromBracket)
            : const Icon(Icons.navigate_next),
        // the function of clicking
        // If the user is on the last page, he goes to the activation screen
        onPressed: () {
          if (_pageIndex == data.length - 1) {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ActivationScreen(),
                ));
            // If not on the last page,
            // move to the next page using the controller.
          } else {
            _pageController.nextPage(
                duration: const Duration(milliseconds: 350),
                curve: Curves.ease);
          }
        },
      ),
    );
  }
}
