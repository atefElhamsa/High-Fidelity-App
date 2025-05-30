import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:high_fidelity/features/collection/presentation/views/widgets/collection_body.dart';

import '../../../../core/shared_widgets/custom_app_bar.dart';
import '../../../../core/utils/app_texts.dart';

class CollectionScreen extends StatelessWidget {
  const CollectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.h),
        child: const Padding(
          padding: EdgeInsets.only(top: 20),
          child: CustomAppBar(title: AppTexts.collection),
        ),
      ),
      body: const CollectionBody(),
    );
  }
}
