import 'package:flutter/material.dart';
import 'package:high_fidelity/features/home/data/models/row_title_model.dart';

class CustomRowTitle extends StatelessWidget {
  const CustomRowTitle({super.key, required this.rowTitleModel});
  final RowTitleModel rowTitleModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        rowTitleModel.widget,
        const Spacer(),
        Image.asset(rowTitleModel.image),
      ],
    );
  }
}
