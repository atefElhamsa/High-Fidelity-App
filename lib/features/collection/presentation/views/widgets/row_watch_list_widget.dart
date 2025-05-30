import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared_widgets/custom_container.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_texts.dart';
import '../../../../home/data/models/container_model.dart';
import '../../../../home/data/models/row_title_model.dart';
import '../../../../home/presentation/views/widgets/custom_row_title.dart';

class RowWatchListWidget extends StatelessWidget {
  const RowWatchListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomRowTitle(
      rowTitleModel: RowTitleModel(
        widget: CustomContainer(
          containerModel: ContainerModel(
            title: AppTexts.watchlist,
            containerColor: AppColors.lightGreen,
            textColor: AppColors.white,
            icon: const Icon(Icons.add, color: AppColors.white),
            containerWidth: 230.w,
            containerPaddingAndWidth: 15,
            mainAxisAlignment: MainAxisAlignment.start,
          ),
        ),
        image: AppImages.menuImage,
      ),
    );
  }
}
