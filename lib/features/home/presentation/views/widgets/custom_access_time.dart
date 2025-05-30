import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../core/utils/app_texts.dart';
import '../../../../onboarding/data/models/text_model.dart';

class CustomAccessTime extends StatelessWidget {
  const CustomAccessTime({
    super.key,
    required this.textColor,
    required this.imageColor,
  });
  final Color textColor;
  final Color imageColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.access_time_rounded, size: 15.sp, color: imageColor),
        SizedBox(width: 10.w),
        CustomText(
          textModel: TextModel(
            title: AppTexts.time,
            textColor: textColor,
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
