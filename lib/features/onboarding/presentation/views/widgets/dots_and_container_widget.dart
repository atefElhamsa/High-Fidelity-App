import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../home/presentation/views/home_screen.dart';
import '../../../data/models/text_model.dart';
import 'dots_indicator.dart';

class DotsAndContainerWidget extends StatefulWidget {
  const DotsAndContainerWidget({
    super.key,
    required this.currentPageIndex,
    required this.pageController,
  });
  final int currentPageIndex;
  final PageController pageController;

  @override
  State<DotsAndContainerWidget> createState() => _DotsAndContainerWidgetState();
}

class _DotsAndContainerWidgetState extends State<DotsAndContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DotsIndicator(currentPageIndex: widget.currentPageIndex),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: GestureDetector(
            onTap: () {
              if (widget.currentPageIndex == 3) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              } else {
                widget.pageController.animateToPage(
                  widget.currentPageIndex + 1,
                  duration: const Duration(seconds: 1),
                  curve: Curves.ease,
                );
              }
            },
            child: Container(
              width: widget.currentPageIndex == 3 ? 90 : 60,
              height: widget.currentPageIndex == 3 ? 40 : 60,
              decoration: BoxDecoration(
                color: AppColors.black,
                borderRadius: BorderRadius.circular(
                  widget.currentPageIndex == 3 ? 10 : 50,
                ),
              ),
              child:
                  widget.currentPageIndex == 3
                      ? Center(
                        child: CustomText(
                          textModel: TextModel(
                            title: "Start",
                            textColor: AppColors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 23.sp,
                          ),
                        ),
                      )
                      : const Icon(
                        Icons.arrow_forward_rounded,
                        color: AppColors.white,
                        size: 35,
                      ),
            ),
          ),
        ),
      ],
    );
  }
}
