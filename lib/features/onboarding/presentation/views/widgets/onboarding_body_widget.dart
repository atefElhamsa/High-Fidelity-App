import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_texts.dart';
import '../../../data/models/text_model.dart';

class OnboardingBodyWidget extends StatelessWidget {
  const OnboardingBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Image.asset(AppImages.onboardingImage, fit: BoxFit.cover),
        ),
        SizedBox(height: 1.h),
        CustomText(
          textModel: TextModel(
            title: AppTexts.discoverCollect,
            fontWeight: FontWeight.w700,
            fontSize: 50.sp,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              textModel: TextModel(
                title: AppTexts.andSell,
                fontWeight: FontWeight.w700,
                fontSize: 50.sp,
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomText(
                  textModel: TextModel(
                    title: AppTexts.nfts,
                    fontWeight: FontWeight.w700,
                    fontSize: 50.sp,
                    textColor: AppColors.lightGreen,
                  ),
                ),
                Image.asset(AppImages.lineMark),
              ],
            ),
          ],
        ),
        SizedBox(height: 10.h),
        CustomText(
          textModel: TextModel(
            title: AppTexts.descOnboarding,
            textColor: AppColors.lightGrey,
            fontWeight: FontWeight.w300,
            fontSize: 24.sp,
          ),
        ),
      ],
    );
  }
}
