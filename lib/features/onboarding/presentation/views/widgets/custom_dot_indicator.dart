import 'package:flutter/material.dart';
import 'package:high_fidelity/core/utils/app_colors.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: isActive ? 10 : 8,
      height: isActive ? 10 : 8,
      decoration: ShapeDecoration(
        color: isActive ? AppColors.dotColorBlack : AppColors.lightGrey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
