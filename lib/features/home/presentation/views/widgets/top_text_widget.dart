import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_texts.dart';
import '../../../../onboarding/data/models/text_model.dart';

class TopTextWidget extends StatelessWidget {
  const TopTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CustomText(
              textModel: TextModel(
                title: AppTexts.sellingThe,
                fontSize: 34.sp,
                fontWeight: FontWeight.w700,
                textColor: AppColors.black,
              ),
            ),
            CustomText(
              textModel: TextModel(
                title: AppTexts.mostPopular.toUpperCase(),
                fontSize: 34.sp,
                fontWeight: FontWeight.w700,
                textColor: AppColors.lightGreen,
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.topLeft,
          child: CustomText(
            textModel: TextModel(
              title: AppTexts.onlyHere,
              fontSize: 34.sp,
              fontWeight: FontWeight.w700,
              textColor: AppColors.black,
            ),
          ),
        ),
      ],
    );
  }
}
