import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:high_fidelity/core/utils/app_colors.dart';
import 'package:high_fidelity/core/utils/app_images.dart';
import 'package:high_fidelity/core/utils/app_texts.dart';
import 'package:high_fidelity/features/home/presentation/views/widgets/home_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.black,
        unselectedItemColor: AppColors.lightGrey,
        backgroundColor: AppColors.white,
        currentIndex: currentIndex,
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              AppImages.homeIcon,
              fit: BoxFit.cover,
              height: currentIndex == 0 ? 25.sp : 20.sp,
              color: currentIndex == 0 ? AppColors.black : AppColors.lightGrey,
            ),
            label: AppTexts.home,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppImages.searchIcon,
              fit: BoxFit.cover,
              height: currentIndex == 1 ? 25.sp : 20.sp,
              color: currentIndex == 1 ? AppColors.black : AppColors.lightGrey,
            ),
            label: AppTexts.search,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppImages.favouriteIcon,
              fit: BoxFit.cover,
              height: currentIndex == 2 ? 25.sp : 20.sp,
              color: currentIndex == 2 ? AppColors.black : AppColors.lightGrey,
            ),
            label: AppTexts.favourites,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppImages.userIcon,
              fit: BoxFit.cover,
              height: currentIndex == 3 ? 25.sp : 20.sp,
              color: currentIndex == 3 ? AppColors.black : AppColors.lightGrey,
            ),
            label: AppTexts.user,
          ),
        ],
      ),
      body: const HomeBody(),
    );
  }
}
