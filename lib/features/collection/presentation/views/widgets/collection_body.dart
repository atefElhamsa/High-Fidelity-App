import 'package:flutter/material.dart';
import 'package:high_fidelity/core/utils/app_images.dart';
import 'package:high_fidelity/features/collection/presentation/views/widgets/grid_view_list_items.dart';
import 'package:high_fidelity/features/collection/presentation/views/widgets/likes_and_title_list_view.dart';
import 'package:high_fidelity/features/collection/presentation/views/widgets/name_verify_and_description.dart';
import 'package:high_fidelity/features/collection/presentation/views/widgets/row_watch_list_widget.dart';
import 'package:high_fidelity/features/collection/presentation/views/widgets/tab_bar_widget.dart';

class CollectionBody extends StatelessWidget {
  const CollectionBody({super.key, required this.tabController});
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Image.asset(AppImages.banner),
          const NameVerifyAndDescription(),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: LikesAndTitleListView(),
          ),
          const SizedBox(height: 20),
          const RowWatchListWidget(),
          const SizedBox(height: 20),
          TabBarWidget(tabController: tabController),
          const SizedBox(height: 20),
          GridViewListItems(tabController: tabController),
        ],
      ),
    );
  }
}
