import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:high_fidelity/features/home/data/models/price_and_icon_model.dart';

import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../onboarding/data/models/text_model.dart';

class PriceAndIconWidget extends StatelessWidget {
  const PriceAndIconWidget({super.key, required this.priceAndIconModel});
  final PriceAndIconModel priceAndIconModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        priceAndIconModel.priceImage != null
            ? Image.asset(priceAndIconModel.priceImage!, fit: BoxFit.cover)
            : const SizedBox(),
        priceAndIconModel.priceImage != null
            ? SizedBox(width: 10.h)
            : const SizedBox(),
        Padding(
          padding: EdgeInsets.only(left: priceAndIconModel.paddingLeft ?? 0),
          child: CustomText(
            textModel: TextModel(
              title: priceAndIconModel.price!,
              textColor: AppColors.black,
              fontSize: priceAndIconModel.priceSize ?? 18.sp,
              fontWeight: priceAndIconModel.fontWeight ?? FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
