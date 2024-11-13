import 'package:flutter/material.dart';

class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({
    super.key,
    required this.image,
    required this.deviceName,
    required this.deviceInfo,
  });

  // final String image, deviceName, deviceInfo;
  final String image, deviceName, deviceInfo;

  @override
  Widget build(BuildContext context) {
    // Stack allow widgets to overlap each other.
    return Stack(
      children: [
        Column(
          children: [
            // add flexible space.
            const Spacer(
              flex: 2,
            ),
            // Add an image.
            Image.asset(
              image,
              height: 250,
            ),
            // add flexible space.
            const Spacer(
              flex: 1,
            ),
            // Add text to display the device name.
            Text(
              deviceName,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontWeight: FontWeight.w500),
            ),
            // add SizedBox space.
            const SizedBox(
              height: 15,
            ),
            // text to display device information (description).
            Text(
              deviceInfo,
              textAlign: TextAlign.center,
            ),
            // add flexible space.
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ],
    );
  }
}
