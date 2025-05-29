import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:high_fidelity/core/utils/app_images.dart';
import 'package:high_fidelity/core/utils/app_texts.dart';
import 'package:high_fidelity/features/home/data/models/text_under_image_section_part_two_model.dart';
import 'package:high_fidelity/features/home/presentation/views/widgets/dotted_widget.dart';
import 'package:high_fidelity/features/home/presentation/views/widgets/text_under_image_section_part_one.dart';
import 'package:high_fidelity/features/home/presentation/views/widgets/text_under_image_section_part_two.dart';
import '../../../../../core/utils/app_colors.dart';

class TextUnderImageSection extends StatelessWidget {
  const TextUnderImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          const TextUnderImageSectionPartOne(),
          SizedBox(height: 10.h),
          const DottedWidget(),
          SizedBox(height: 20.h),
          const TextUnderImageSectionPartTwo(
            textUnderImageSectionPartTwoModel:
                TextUnderImageSectionPartTwoModel(
                  title: AppTexts.highestBidToday,
                  price: AppTexts.money,
                  containerTitle: AppTexts.placeBid,
                  containerImage: AppImages.iconText,
                  priceImage: AppImages.iconCost,
                ),
          ),

        ],
      ),
    );
  }
}
