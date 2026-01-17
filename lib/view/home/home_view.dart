import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../resources/colors/app_colors.dart';
import '../../resources/fonts/app_fonts.dart';
import '../../resources/components/bottom_nav_bar.dart';
import 'home_controller.dart';
import 'widgets/home_app_bar.dart';
import 'widgets/home_search_bar.dart';
import 'widgets/home_progress_card.dart';
import 'widgets/home_categories.dart';
import 'widgets/home_experts_list.dart';
import 'widgets/home_recommended_list.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // Instantiate controller if not already
    Get.lazyPut(() => HomeController());

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Stack( // Use Stack to make Bottom Nav fixed if needed, or just standard Scaffold
          children: [
             SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const HomeAppBar(),
                    const HomeSearchBar(),
                    const HomeProgressCard(),
                    const SizedBox(height: 32),
                    const HomeCategories(),
                    const SizedBox(height: 32),
                    const HomeExpertsList(),
                    const SizedBox(height: 32),
                    const HomeRecommendedList(),
                    const SizedBox(height: 120), // Sufficient space for floating bottom nav
                  ],
                ),
              ),
            ),
            // Floating Bottom Nav Positioned at bottom
             Positioned(
               bottom: 0,
               left: 0,
               right: 0,
               child: const BottomNavBar(),
             ),
          ],
        ),
      ),
    );
  }
}
