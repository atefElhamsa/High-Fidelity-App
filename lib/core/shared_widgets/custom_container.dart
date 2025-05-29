import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:high_fidelity/features/home/data/models/container_model.dart';
import '../../features/onboarding/data/models/text_model.dart';
import '../utils/app_colors.dart';
import 'custom_text.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.containerModel});

  final ContainerModel containerModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90.w,
      height: 40.h,
      decoration: ShapeDecoration(
        color: AppColors.lightGreen,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
      child: Center(
        child: CustomText(
          textModel: TextModel(
            title: containerModel.title,
            textColor: AppColors.white,
            fontWeight: FontWeight.w400,
            fontSize: 18.sp,
          ),
        ),
      ),
    );
  }
}
