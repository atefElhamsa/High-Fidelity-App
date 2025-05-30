import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:high_fidelity/core/shared_widgets/custom_text.dart';
import 'package:high_fidelity/core/utils/app_colors.dart';
import 'package:high_fidelity/features/collection/data/models/likes_and_title_model.dart';
import 'package:high_fidelity/features/onboarding/data/models/text_model.dart';

class LikesAndTitleWidget extends StatelessWidget {
  const LikesAndTitleWidget({super.key, required this.likesAndTitleModel});
  final LikesAndTitleModel likesAndTitleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        likesAndTitleModel.widget,
        CustomText(
          textModel: TextModel(
            title: likesAndTitleModel.title,
            textColor: AppColors.lightGrey,
            fontSize: 15.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
