import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/shared_widgets/custom_container.dart';
import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_texts.dart';
import '../../../../onboarding/data/models/text_model.dart';
import '../../../data/models/container_model.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: CustomContainer(
        containerModel: ContainerModel(
          title: AppTexts.follow,
          containerColor: AppColors.lightGreen,
          textColor: AppColors.white
        ),
      ),
      title: CustomText(
        textModel: TextModel(
          title: AppTexts.darleneRobertson,
          textColor: AppColors.black,
          fontWeight: FontWeight.w500,
          fontSize: 20.sp,
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(right: 67),
        child: CustomText(
          textModel: TextModel(
            title: AppTexts.followers,
            textColor: AppColors.lightGrey,
            fontWeight: FontWeight.w500,
            fontSize: 15.sp,
          ),
        ),
      ),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Image.asset(AppImages.imageArtist, fit: BoxFit.cover),
      ),
    );
  }
}
