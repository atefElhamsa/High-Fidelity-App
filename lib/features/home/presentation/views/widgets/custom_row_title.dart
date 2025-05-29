import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:high_fidelity/features/home/data/models/row_title_model.dart';
import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../onboarding/data/models/text_model.dart';

class CustomRowTitle extends StatelessWidget {
  const CustomRowTitle({super.key, required this.rowTitleModel});
  final RowTitleModel rowTitleModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomText(
          textModel: TextModel(
            title: rowTitleModel.title,
            fontWeight: FontWeight.w600,
            fontSize: 25.sp,
          ),
        ),
        const Spacer(),
        Image.asset(rowTitleModel.image),
      ],
    );
  }
}
