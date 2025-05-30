import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:high_fidelity/features/home/data/models/text_under_image_section_part_two_model.dart';
import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../onboarding/data/models/text_model.dart';

class TextUnderImageSectionPartTwo extends StatelessWidget {
  const TextUnderImageSectionPartTwo({
    super.key,
    required this.textUnderImageSectionPartTwoModel,
  });

  final TextUnderImageSectionPartTwoModel textUnderImageSectionPartTwoModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: textUnderImageSectionPartTwoModel.paddingLeft ?? 0,
              ),
              child: CustomText(
                textModel: TextModel(
                  title: textUnderImageSectionPartTwoModel.title,
                  textColor: AppColors.lightGrey,
                  fontSize:
                      textUnderImageSectionPartTwoModel.titleSize ?? 15.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 8.h),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Row(
                children: [
                  textUnderImageSectionPartTwoModel.priceImage != null
                      ? Image.asset(
                        textUnderImageSectionPartTwoModel.priceImage!,
                        fit: BoxFit.cover,
                      )
                      : const SizedBox(),
                  textUnderImageSectionPartTwoModel.priceImage != null
                      ? SizedBox(width: 10.h)
                      : const SizedBox(),
                  Padding(
                    padding: EdgeInsets.only(
                      left: textUnderImageSectionPartTwoModel.paddingLeft ?? 0,
                    ),
                    child: CustomText(
                      textModel: TextModel(
                        title: textUnderImageSectionPartTwoModel.price,
                        textColor: AppColors.black,
                        fontSize:
                            textUnderImageSectionPartTwoModel.priceSize ??
                            18.sp,
                        fontWeight:
                            textUnderImageSectionPartTwoModel.fontWeight ??
                            FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const Spacer(),
        GestureDetector(
          onTap: textUnderImageSectionPartTwoModel.onTap,
          child: Container(
            height: textUnderImageSectionPartTwoModel.containerHeight ?? 40,
            width: textUnderImageSectionPartTwoModel.containerWidth ?? 125,
            decoration: BoxDecoration(
              color: AppColors.black,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  textUnderImageSectionPartTwoModel.containerImage,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 10.w),
                CustomText(
                  textModel: TextModel(
                    title: textUnderImageSectionPartTwoModel.containerTitle,
                    fontWeight: FontWeight.w500,
                    fontSize: 20.sp,
                    textColor: AppColors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
