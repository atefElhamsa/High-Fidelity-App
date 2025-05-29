import 'package:flutter/material.dart';
import 'package:high_fidelity/features/home/presentation/views/widgets/image_section.dart';
import 'package:high_fidelity/features/home/presentation/views/widgets/text_under_image_section.dart';

class TopCollectionSection extends StatelessWidget {
  const TopCollectionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ImageSection(),
        TextUnderImageSection(),
      ],
    );
  }
}
