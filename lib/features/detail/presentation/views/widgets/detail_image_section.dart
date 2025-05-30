import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_images.dart';

class DetailImageSection extends StatelessWidget {
  const DetailImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Image.asset(
          AppImages.detailImage,
          fit: BoxFit.cover,
          height: 400.h,
        ),
      ),
    );
  }
}
