import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:high_fidelity/core/utils/app_texts.dart';
import 'package:high_fidelity/features/home/data/models/container_model.dart';
import 'package:high_fidelity/features/home/presentation/views/widgets/custom_contanier_widget.dart';

class ContainersList extends StatefulWidget {
  const ContainersList({super.key});

  @override
  State<ContainersList> createState() => _ContainersListState();
}

class _ContainersListState extends State<ContainersList> {
  int activeIndex = 0;

  final List<String> items = [
    AppTexts.trending,
    AppTexts.byArtist,
    AppTexts.etc,
    AppTexts.btc,
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: ListView.builder(
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {
                if (activeIndex != index) {
                  setState(() {
                    activeIndex = index;
                  });
                }
              },
              child: CustomContainerWidget(
                containerModel: ContainerModel(
                  title: items[index],
                  isActive: activeIndex == index,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
