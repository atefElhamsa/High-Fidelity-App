import 'package:flutter/material.dart';

import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_texts.dart';
import '../../../data/models/item_model.dart';
import 'container_widget_grid_view.dart';

class ItemsList extends StatelessWidget {
  ItemsList({super.key});

  final List<ItemModel> items = [
    const ItemModel(
      image: AppImages.detailImage,
      detailCode: AppTexts.detailCode,
      title: AppTexts.hypebestApesB,
    ),
    const ItemModel(
      image: AppImages.itemD,
      detailCode: AppTexts.itemCodeD,
      title: AppTexts.hypebestApesD,
    ),
    const ItemModel(
      image: AppImages.imageCollection,
      detailCode: AppTexts.detailCode,
      title: AppTexts.hypebestApesB,
    ),
    const ItemModel(
      image: AppImages.imageLastItem,
      detailCode: AppTexts.detailCode,
      title: AppTexts.hypebestApesG,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
      ),
      itemBuilder: (context, index) {
        return ContainerWidgetGridView(
          image: items[index].image,
          detailCode: items[index].detailCode,
          title: items[index].title,
        );
      },
      physics: const BouncingScrollPhysics(),
      itemCount: items.length,
    );
  }
}
