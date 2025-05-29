import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_texts.dart';
import '../../../../onboarding/data/models/text_model.dart';

class TextUnderImageSectionPartOne extends StatelessWidget {
  const TextUnderImageSectionPartOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomText(
          textModel: TextModel(
            title: AppTexts.hypebestApesG,
            textColor: AppColors.black,
            fontSize: 23.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomText(
              textModel: TextModel(
                title: AppTexts.endsIn,
                textColor: AppColors.lightGrey,
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              children: [
                Icon(Icons.access_time_rounded, size: 15.sp),
                SizedBox(width: 10.w),
                CustomText(
                  textModel: TextModel(
                    title: AppTexts.time,
                    textColor: AppColors.black,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
