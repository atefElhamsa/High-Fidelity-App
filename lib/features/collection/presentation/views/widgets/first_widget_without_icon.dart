import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_texts.dart';
import '../../../../onboarding/data/models/text_model.dart';

class FirstWidgetWithoutIcon extends StatelessWidget {
  const FirstWidgetWithoutIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomText(
      textModel: TextModel(
        title: AppTexts.itemsPrice,
        textColor: AppColors.black,
        fontWeight: FontWeight.w700,
        fontSize: 25.sp,
      ),
    );
  }
}
