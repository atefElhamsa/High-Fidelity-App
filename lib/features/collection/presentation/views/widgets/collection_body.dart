import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:high_fidelity/core/utils/app_images.dart';
import 'package:high_fidelity/features/collection/presentation/views/widgets/likes_and_title_list_view.dart';
import 'package:high_fidelity/features/collection/presentation/views/widgets/name_verify_and_description.dart';
import 'package:high_fidelity/features/collection/presentation/views/widgets/row_watch_list_widget.dart';

class CollectionBody extends StatelessWidget {
  const CollectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Image.asset(AppImages.banner),
          const NameVerifyAndDescription(),
          const SizedBox(height: 10),
          Expanded(child: LikesAndTitleListView()),
          const SizedBox(height: 20),
          const RowWatchListWidget(),
          const SizedBox(height: 20),
          SizedBox(height: 380.h),
        ],
      ),
    );
  }
}
