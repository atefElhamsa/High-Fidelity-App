import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:high_fidelity/features/collection/data/models/likes_and_title_model.dart';
import 'package:high_fidelity/features/collection/presentation/views/widgets/first_widget_without_icon.dart';
import 'package:high_fidelity/features/collection/presentation/views/widgets/likes_and_title_widget.dart';
import 'package:high_fidelity/features/collection/presentation/views/widgets/second_widget_with_icon.dart';
import 'package:high_fidelity/features/home/presentation/views/widgets/dotted_widget.dart';
import '../../../../../core/utils/app_texts.dart';

class LikesAndTitleListView extends StatelessWidget {
  LikesAndTitleListView({super.key});

  final List<LikesAndTitleModel> items = [
    const LikesAndTitleModel(
      widget: FirstWidgetWithoutIcon(),
      title: AppTexts.items,
    ),
    const LikesAndTitleModel(
      widget: SecondWidgetWithIcon(price: AppTexts.volumePrice),
      title: AppTexts.volume,
    ),
    const LikesAndTitleModel(
      widget: SecondWidgetWithIcon(price: AppTexts.floorPriceCount),
      title: AppTexts.floorPrice,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 70.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return LikesAndTitleWidget(
            likesAndTitleModel: LikesAndTitleModel(
              widget: items[index].widget,
              title: items[index].title,
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: DottedWidget(direction: Axis.vertical, lineLength: 60),
          );
        },
        itemCount: 3,
      ),
    );
  }
}
