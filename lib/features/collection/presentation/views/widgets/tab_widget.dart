import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../onboarding/data/models/text_model.dart';

class TabWidget extends StatelessWidget {
  const TabWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: SizedBox(
        height: 20,
        width: MediaQuery.sizeOf(context).width * 0.5,
        child: Center(
          child: CustomText(
            textModel: TextModel(
              title: title,
              fontWeight: FontWeight.w500,
              fontSize: 15.sp,
            ),
          ),
        ),
      ),
    );
  }
}
