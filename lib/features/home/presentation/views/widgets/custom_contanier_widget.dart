import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:high_fidelity/features/home/data/models/container_model.dart';
import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../onboarding/data/models/text_model.dart';

class CustomContainerWidget extends StatefulWidget {
  const CustomContainerWidget({super.key, required this.containerModel});
  final ContainerModel containerModel;

  @override
  State<CustomContainerWidget> createState() => _CustomContainerWidgetState();
}

class _CustomContainerWidgetState extends State<CustomContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90.w,
      height: 40.h,
      decoration: ShapeDecoration(
        color:
            widget.containerModel.isActive
                ? AppColors.lightGreen
                : AppColors.lightGreyContainer,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
      child: Center(
        child: CustomText(
          textModel: TextModel(
            title: widget.containerModel.title,
            textColor:
                widget.containerModel.isActive
                    ? AppColors.white
                    : AppColors.black,
            fontWeight: FontWeight.w400,
            fontSize: 18.sp,
          ),
        ),
      ),
    );
  }
}
