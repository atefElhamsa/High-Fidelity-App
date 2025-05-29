import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_texts.dart';
import '../../../data/models/text_model.dart';

class SkipWidget extends StatelessWidget {
  const SkipWidget({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 40.h,
      left: 300.w,
      child: TextButton(
        onPressed: () {
          pageController.animateToPage(
            3,
            duration: const Duration(milliseconds: 450),
            curve: Curves.ease,
          );
        },
        child: CustomText(
          textModel: TextModel(
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
            textColor: AppColors.dotColorBlack,
            title: AppTexts.skip,
          ),
        ),
      ),
    );
  }
}
