import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:high_fidelity/core/utils/app_images.dart';
import 'package:high_fidelity/core/utils/app_texts.dart';
import 'package:high_fidelity/features/home/data/models/row_title_model.dart';
import 'package:high_fidelity/features/home/presentation/views/widgets/containers_list.dart';
import 'package:high_fidelity/features/home/presentation/views/widgets/custom_row_title.dart';
import 'package:high_fidelity/features/home/presentation/views/widgets/list_tile_widget.dart';
import 'package:high_fidelity/features/home/presentation/views/widgets/top_collection_section.dart';
import 'package:high_fidelity/features/home/presentation/views/widgets/top_text_widget.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const TopTextWidget(),
          SizedBox(height: 25.h),
          const ContainersList(),
          SizedBox(height: 25.h),
          const CustomRowTitle(
            rowTitleModel: RowTitleModel(
              title: AppTexts.topCollection,
              image: AppImages.menuImage,
            ),
          ),
          SizedBox(height: 20.h),
          const TopCollectionSection(),
          SizedBox(height: 30.h),
          const CustomRowTitle(
            rowTitleModel: RowTitleModel(
              title: AppTexts.bestArtist,
              image: AppImages.menuImage,
            ),
          ),
          SizedBox(height: 15.h),
          const ListTileWidget(),
        ],
      ),
    );
  }
}
