import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:high_fidelity/features/home/presentation/views/widgets/containers_list.dart';
import 'package:high_fidelity/features/home/presentation/views/widgets/home_widget.dart';
import 'package:high_fidelity/features/home/presentation/views/widgets/top_text_widget.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const TopTextWidget(),
          SizedBox(height: 25.h),
          const ContainersList(),
          SizedBox(height: 25.h),
          const HomeWidget(),
        ],
      ),
    );
  }
}
