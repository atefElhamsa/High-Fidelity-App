import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:high_fidelity/features/home/presentation/views/widgets/top_collection_section.dart';
import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_texts.dart';
import '../../../../onboarding/data/models/text_model.dart';
import '../../../data/models/row_title_model.dart';
import 'custom_row_title.dart';
import 'list_tile_widget_list_view.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomRowTitle(
          rowTitleModel: RowTitleModel(
            widget: CustomText(
              textModel: TextModel(
                title: AppTexts.topCollection,
                fontWeight: FontWeight.w600,
                fontSize: 25.sp,
              ),
            ),
            image: AppImages.menuImage,
          ),
        ),
        SizedBox(height: 20.h),
        const TopCollectionSection(),
        SizedBox(height: 30.h),
        CustomRowTitle(
          rowTitleModel: RowTitleModel(
            widget: CustomText(
              textModel: TextModel(
                title: AppTexts.bestArtist,
                fontWeight: FontWeight.w600,
                fontSize: 25.sp,
              ),
            ),
            image: AppImages.menuImage,
          ),
        ),
        SizedBox(height: 15.h),
        const ListTileWidgetListView(),
      ],
    );
  }
}
