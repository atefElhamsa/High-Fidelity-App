import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_texts.dart';
import '../../../../onboarding/data/models/text_model.dart';

class NameVerifyAndDescription extends StatelessWidget {
  const NameVerifyAndDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              textModel: TextModel(
                title: AppTexts.darleneRobertson,
                fontWeight: FontWeight.w600,
                fontSize: 25.sp,
              ),
            ),
            const SizedBox(width: 10),
            Image.asset(AppImages.verify, fit: BoxFit.cover, height: 20.sp),
          ],
        ),
        const SizedBox(height: 10),
        CustomText(
          textModel: TextModel(
            title: AppTexts.descriptionDetail,
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
            textColor: AppColors.lightGrey,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
