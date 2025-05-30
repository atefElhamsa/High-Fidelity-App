import 'package:flutter/material.dart';
import 'package:high_fidelity/features/collection/presentation/views/widgets/tab_widget.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_texts.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key, required this.tabController});
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      dividerColor: Colors.transparent,
      indicator: const UnderlineTabIndicator(
        borderSide: BorderSide(color: AppColors.lightGreen, width: 2.5),
      ),
      unselectedLabelColor: AppColors.lightGrey,
      tabs: [
        const TabWidget(title: AppTexts.itemS),
        const TabWidget(title: AppTexts.activity),
      ],
    );
  }
}
