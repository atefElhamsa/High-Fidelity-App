import 'package:flutter/material.dart';
import 'package:high_fidelity/features/onboarding/presentation/views/widgets/onboarding_body.dart';

import '../../../../core/utils/app_colors.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.backgroundOnboarding,
      body: OnboardingBody(),
    );
  }
}
