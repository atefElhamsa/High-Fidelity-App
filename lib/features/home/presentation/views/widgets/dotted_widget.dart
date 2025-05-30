import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class DottedWidget extends StatelessWidget {
  const DottedWidget({super.key, this.direction, this.lineLength});
  final Axis? direction;
  final double? lineLength;

  @override
  Widget build(BuildContext context) {
    return DottedLine(
      direction: direction ?? Axis.horizontal,
      alignment: WrapAlignment.center,
      lineLength: lineLength ?? double.infinity,
      lineThickness: 1,
      dashLength: 6,
      dashColor: AppColors.lightGrey,
      dashGapLength: 10,
    );
  }
}
