import 'package:consult/constants.dart';
import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    this.isActive = false,
  });
  // boolean value, to check if the point is active or not
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    // AnimatedContainer to provide animation effects when values ​​change
    return AnimatedContainer(
      duration: const Duration(milliseconds: 350),
      // If the point is active, the height becomes 12,
      // if not active it becomes 4
      height: isActive ? 12 : 4,
      width: 10,
      // outer decoration of the point
      decoration: BoxDecoration(
          color: isActive ? kPrimerColor : kPrimerColor.withOpacity(0.4),
          borderRadius: const BorderRadius.all(Radius.circular(12))),
    );
  }
}
