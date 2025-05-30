import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared_widgets/custom_container.dart';
import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_texts.dart';
import '../../../../home/data/models/container_model.dart';
import '../../../../home/data/models/row_title_model.dart';
import '../../../../home/presentation/views/widgets/custom_access_time.dart';
import '../../../../home/presentation/views/widgets/custom_row_title.dart';
import '../../../../onboarding/data/models/text_model.dart';

class TextUnderDetailImageSectionPartOne extends StatelessWidget {
  const TextUnderDetailImageSectionPartOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 23),
          child: CustomText(
            textModel: TextModel(
              title: AppTexts.detailCode,
              textColor: AppColors.lightGreen,
              fontWeight: FontWeight.w700,
              fontSize: 30.sp,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: CustomRowTitle(
            rowTitleModel: RowTitleModel(
              title: AppTexts.hypebestApesB,
              image: AppImages.iconDetail,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            children: [
              CustomContainer(
                containerModel: ContainerModel(
                  title: AppTexts.sold,
                  containerColor: AppColors.soldColor.withOpacity(0.05),
                  textColor: AppColors.lightGrey.withOpacity(0.5),
                ),
              ),
              const CustomAccessTime(
                textColor: AppColors.lightGrey,
                imageColor: AppColors.lightGrey,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
