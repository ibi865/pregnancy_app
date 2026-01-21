import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../resources/colors/app_colors.dart';
import '../../../resources/fonts/app_fonts.dart';
import '../../../resources/assets/images_assets.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    // Data list mimicking the design
    final categories = [
      {'icon': ImageAssets.massageIcon, 'label': 'massage'.tr, 'color': AppColors.pastelPink, 'iconColor': AppColors.primaryColor},
      {'icon': ImageAssets.footSpaIcon, 'label': 'foot_spa'.tr, 'color': AppColors.pastelBlue, 'iconColor': const Color(0xFF42A5F5)}, // Blue
      {'icon': ImageAssets.nutritionistIcon, 'label': 'nutritionist'.tr, 'color': AppColors.pastelPurple, 'iconColor': const Color(0xFFAB47BC)}, // Purple
      {'icon': ImageAssets.fitnessIcon, 'label': 'fitness'.tr, 'color': AppColors.pastelPink, 'iconColor': AppColors.primaryColor},
      {'icon': ImageAssets.lactationIcon, 'label': 'lactation'.tr, 'color': AppColors.pastelPink, 'iconColor': AppColors.primaryColor},
      {'icon': ImageAssets.therapyIcon, 'label': 'therapy'.tr, 'color': AppColors.pastelBlue, 'iconColor': const Color(0xFF5C6BC0)}, // Indigo
      {'icon': ImageAssets.homeCareIcon, 'label': 'home_care'.tr, 'color': AppColors.pastelPink, 'iconColor': AppColors.primaryColor},
      {'icon': ImageAssets.babyCareIcon, 'label': 'baby_care'.tr, 'color': AppColors.pastelBlue, 'iconColor': const Color(0xFF29B6F6)}, // Light Blue
    ];

    return Column(
      children: [
        _buildHeader(),
        const SizedBox(height: 16),
        SizedBox(
          height: 200, // Sufficient height for 2 rows
          child: GridView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // 2 Rows
              childAspectRatio: 1.1, // Aspect ratio to make them square-ish/rectangular
              crossAxisSpacing: 12, // vertical spacing in horizontal mode
              mainAxisSpacing: 12, // horizontal spacing
            ),
            itemCount: categories.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return _buildCategoryItem(categories[index]);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'categories'.tr,
          style: AppFonts.headlineMedium.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        TextButton(
          onPressed: () {
            // Navigate to all categories
            Get.toNamed('/categories'); 
          },
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Text(
            'see_all'.tr,
            style: AppFonts.bodyMedium.copyWith(
              color: AppColors.subTextColor,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCategoryItem(Map<String, dynamic> category) {
    return Container(
      decoration: BoxDecoration(
        color: category['color'],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            category['icon'] as String,
            width: 32,
            height: 32,
          ),
          const SizedBox(height: 8),
          Text(
            category['label'],
            textAlign: TextAlign.center,
            style: AppFonts.labelSmall.copyWith(
              color: AppColors.textColor,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
