import 'package:flutter/material.dart';
import 'package:high_fidelity/features/collection/presentation/views/widgets/text_over_image_stack.dart';
import 'image_container_widget.dart';

class ContainerWidgetGridView extends StatelessWidget {
  const ContainerWidgetGridView({
    super.key,
    required this.image,
    required this.detailCode,
    required this.title,
  });

  final String image;
  final String detailCode;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ImageContainerWidget(image: image),
        TextOverImageStack(detailCode: detailCode, title: title),
      ],
    );
  }
}
