import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:high_fidelity/features/onboarding/presentation/views/widgets/dots_and_container_widget.dart';
import 'package:high_fidelity/features/onboarding/presentation/views/widgets/page_view.dart';
import 'package:high_fidelity/features/onboarding/presentation/views/widgets/skip_widget.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({super.key});

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            PageViewOnboarding(pageController: pageController),
            SizedBox(height: currentPageIndex == 3 ? 111.h : 100.h),
            DotsAndContainerWidget(
              currentPageIndex: currentPageIndex,
              pageController: pageController,
            ),
          ],
        ),
        SkipWidget(pageController: pageController),
      ],
    );
  }
}
