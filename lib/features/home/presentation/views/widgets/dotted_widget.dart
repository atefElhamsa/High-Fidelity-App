import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class DottedWidget extends StatelessWidget {
  const DottedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const DottedLine(
      direction: Axis.horizontal,
      alignment: WrapAlignment.center,
      lineLength: double.infinity,
      lineThickness: 1,
      dashLength: 6,
      dashColor: AppColors.lightGrey,
      dashGapLength: 10,
    );
  }
}
