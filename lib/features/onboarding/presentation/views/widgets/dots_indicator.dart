import 'package:flutter/material.dart';
import 'package:high_fidelity/features/onboarding/presentation/views/widgets/custom_dot_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentPageIndex});

  final int currentPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        4,
        (index) => Padding(
          padding: const EdgeInsets.only(left: 5),
          child: CustomDotIndicator(isActive: index == currentPageIndex),
        ),
      ),
    );
  }
}
