import 'package:consult/widgets/Buttons/skip_button.dart';
import 'package:flutter/material.dart';
import 'package:consult/widgets/list_of_data.dart';
import 'package:consult/widgets/onboarding_content.dart';
import 'dot_indicator_list.dart';
import 'Buttons/next_button.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({super.key});

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  // variable of type PageController to control the scrolling pages
  late PageController _pageController;
  // Variable to store the index of the current page
  int _pageIndex = 0;

  // The initState function prepares variables when the widget is initialized.
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  // The dispose function cleans up resources when the widget is destroyed.
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // The content appears in the safe part of the screen.
      body: SafeArea(
        child: Column(
          children: [
            // Skip button in stack with fixed height in sizeBox
            const SizedBox(
              height: 50,
              // Add a skip button at the top left of the screen
              child: Stack(children: [
                SkipButton(),
              ]),
            ),
            //expanded for column with another item
            Expanded(
              child: PageView.builder(
                  // Determine the number of pages using the data length
                  itemCount: data.length,
                  // Set the page controller
                  controller: _pageController,
                  // Change index when page changes
                  onPageChanged: (index) {
                    // Update the _pageIndex to reflect the current page
                    setState(() {
                      _pageIndex = index;
                    });
                  },
                  // Build page content according to the specified index
                  itemBuilder: (context, index) => OnBoardingContent(
                        // Image per page
                        image: data[index].image,
                        // Device title per page
                        deviceName: data[index].title,
                        // Device description per page
                        deviceInfo: data[index].description,
                      )),
            ),
            // spaces, cursor, and next button
            Column(
              children: [
                // space between PageView and cursor
                const SizedBox(
                  height: 70,
                ),
                // Call the ListIndicator widget to display the point indicators.
                ListIndicator(pageIndex: _pageIndex),
                // space between cursor and next button
                const SizedBox(
                  height: 30,
                ),
                // Call the NextButton widget to control the "Next" button
                NextButton(
                  pageController:
                      _pageController, // Pass the page controller to the button
                  pageIndex: _pageIndex, // Pass the current index of the button
                ),
              ],
            ),
            // space below column
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
