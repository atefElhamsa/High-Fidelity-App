import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:high_fidelity/core/shared_widgets/custom_text.dart';
import 'package:high_fidelity/core/utils/app_colors.dart';
import 'package:high_fidelity/core/utils/app_images.dart';
import 'package:high_fidelity/core/utils/app_texts.dart';
import 'package:high_fidelity/features/detail/presentation/views/widgets/detail_image_section.dart';
import 'package:high_fidelity/features/detail/presentation/views/widgets/text_under_detail_image_section_part_one.dart';
import 'package:high_fidelity/features/home/data/models/text_under_image_section_part_two_model.dart';
import 'package:high_fidelity/features/home/presentation/views/widgets/dotted_widget.dart';
import 'package:high_fidelity/features/home/presentation/views/widgets/text_under_image_section_part_two.dart';
import 'package:high_fidelity/features/onboarding/data/models/text_model.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DetailImageSection(),
          SizedBox(height: 15.h),
          const TextUnderDetailImageSectionPartOne(),
          SizedBox(height: 10.h),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: DottedWidget(),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: CustomText(
              textModel: TextModel(
                title: AppTexts.description,
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 10),
            child: CustomText(
              textModel: TextModel(
                title: AppTexts.descriptionDetail,
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
                textColor: AppColors.lightGrey,
                textAlign: TextAlign.start,
              ),
            ),
          ),
          const Spacer(),
          TextUnderImageSectionPartTwo(
            textUnderImageSectionPartTwoModel:
                TextUnderImageSectionPartTwoModel(
                  title: AppTexts.price,
                  price: AppTexts.money,
                  containerTitle: AppTexts.placeBid,
                  containerImage: AppImages.iconText,
                  titleSize: 25.sp,
                  containerHeight: 70,
                  containerWidth: 180,
                  paddingLeft: 25,
                  fontWeight: FontWeight.bold,
                  priceSize: 25.sp,
                ),
          ),
          SizedBox(height: 40.h),
        ],
      ),
    );
  }
}
