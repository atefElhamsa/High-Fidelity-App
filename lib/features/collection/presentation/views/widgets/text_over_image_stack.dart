import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../onboarding/data/models/text_model.dart';

class TextOverImageStack extends StatelessWidget {
  const TextOverImageStack({
    super.key,
    required this.detailCode,
    required this.title,
  });
  final String detailCode;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 30,
      top: 130,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            textModel: TextModel(
              title: detailCode,
              textColor: AppColors.lightGreen,
              fontWeight: FontWeight.w700,
              fontSize: 18.sp,
            ),
          ),
          CustomText(
            textModel: TextModel(
              title: title,
              textColor: AppColors.white,
              fontWeight: FontWeight.w700,
              fontSize: 18.sp,
            ),
          ),
        ],
      ),
    );
  }
}
