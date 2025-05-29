import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:high_fidelity/features/home/presentation/views/widgets/list_tile_widget.dart';

class ListTileWidgetListView extends StatelessWidget {
  const ListTileWidgetListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return const ListTileWidget();
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: 5.h);
      },
      itemCount: 3,
    );
  }
}
