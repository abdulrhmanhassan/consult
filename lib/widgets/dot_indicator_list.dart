import 'package:flutter/material.dart';

import 'dot_indicator.dart';
import 'list_of_data.dart';

class ListIndicator extends StatelessWidget {
  const ListIndicator({
    super.key,
    required int pageIndex,
  }) : _pageIndex =
            pageIndex; // Initialize the _pageIndex variable from the value of the given pageIndex.

  // variable _pageIndex to store the current page number.
  final int _pageIndex;

  @override
  Widget build(BuildContext context) {
    // row to display the cursor points horizontally.
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Generate a list of cursor points using List.generate.
        ...List.generate(
          // Determine the number of points based on the length of the data.
          data.length,
          (index) => Padding(
            // Create padding for each index
            padding: const EdgeInsets.only(right: 4.0),
            // Create pointer
            child: DotIndicator(
              // if the point is active (colored).
              // based on the index matching the current page.
              isActive: index == _pageIndex,
            ),
          ),
        ),
      ],
    );
  }
}
