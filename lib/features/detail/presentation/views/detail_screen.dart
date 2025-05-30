import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:high_fidelity/core/shared_widgets/custom_app_bar.dart';
import 'package:high_fidelity/core/utils/app_texts.dart';
import 'package:high_fidelity/features/detail/presentation/views/widgets/detail_body.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.h),
        child: const Padding(
          padding: EdgeInsets.only(top: 20),
          child: CustomAppBar(title: AppTexts.detail),
        ),
      ),
      body: const DetailBody(),
    );
  }
}
