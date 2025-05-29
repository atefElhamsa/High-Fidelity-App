import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:high_fidelity/core/utils/app_colors.dart';
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
            icon: Icon(Icons.home, size: 30.sp),
            label: AppTexts.home,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded, size: 30.sp),
            label: AppTexts.search,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_rounded, size: 30.sp),
            label: AppTexts.favourites,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 30.sp),
            label: AppTexts.user,
          ),
        ],
      ),
      body: const HomeBody(),
    );
  }
}
