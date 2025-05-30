import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:high_fidelity/core/utils/app_images.dart';
import 'package:high_fidelity/features/home/data/models/price_and_icon_model.dart';
import 'package:high_fidelity/features/home/presentation/views/widgets/price_and_icon_widget.dart';

class SecondWidgetWithIcon extends StatelessWidget {
  const SecondWidgetWithIcon({super.key, required this.price});
  final String price;

  @override
  Widget build(BuildContext context) {
    return PriceAndIconWidget(
      priceAndIconModel: PriceAndIconModel(
        priceImage: AppImages.iconCost,
        price: price,
        priceSize: 25.sp,
      ),
    );
  }
}
