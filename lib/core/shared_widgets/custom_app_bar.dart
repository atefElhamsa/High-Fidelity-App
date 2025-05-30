import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../features/onboarding/data/models/text_model.dart';
import '../utils/app_colors.dart';
import 'custom_text.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios_new_rounded, size: 25.sp),
      ),
      title: CustomText(
        textModel: TextModel(
          title: title,
          textColor: AppColors.black,
          fontSize: 30.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
