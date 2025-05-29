import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:high_fidelity/features/onboarding/presentation/views/widgets/onboarding_body_widget.dart';

class PageViewOnboarding extends StatelessWidget {
  const PageViewOnboarding({super.key, required this.pageController});

  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      children: List.generate(4, (index) => const OnboardingBodyWidget()),
    );
  }
}
