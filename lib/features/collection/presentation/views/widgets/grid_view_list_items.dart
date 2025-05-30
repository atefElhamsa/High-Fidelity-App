import 'package:flutter/material.dart';
import 'package:high_fidelity/features/collection/presentation/views/widgets/activity_widget.dart';
import 'package:high_fidelity/features/collection/presentation/views/widgets/items_list.dart';

class GridViewListItems extends StatelessWidget {
  const GridViewListItems({super.key, required this.tabController});
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 550,
      width: double.infinity,
      child: TabBarView(
        controller: tabController,
        children: [
          ItemsList(),
          const ActivityWidget(),
        ],
      ),
    );
  }
}
