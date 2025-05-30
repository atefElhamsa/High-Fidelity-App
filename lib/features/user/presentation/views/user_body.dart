import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/shared_widgets/custom_text.dart';
import '../../../../core/utils/app_texts.dart';
import '../../../onboarding/data/models/text_model.dart';

class UserBody extends StatelessWidget {
  const UserBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(
        textModel: TextModel(
          title: AppTexts.user,
          fontWeight: FontWeight.w700,
          fontSize: 30.sp,
        ),
      ),
    );
  }
}
