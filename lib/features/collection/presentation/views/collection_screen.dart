import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:high_fidelity/features/collection/presentation/views/widgets/collection_body.dart';

import '../../../../core/shared_widgets/custom_app_bar.dart';
import '../../../../core/utils/app_texts.dart';

class CollectionScreen extends StatefulWidget {
  const CollectionScreen({super.key});

  @override
  State<CollectionScreen> createState() => _CollectionScreenState();
}

class _CollectionScreenState extends State<CollectionScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.h),
          child: const Padding(
            padding: EdgeInsets.only(top: 20),
            child: CustomAppBar(title: AppTexts.collection),
          ),
        ),
        body: CollectionBody(tabController: tabController),
      ),
    );
  }
}
