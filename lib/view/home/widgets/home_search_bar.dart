import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../resources/colors/app_colors.dart';
import '../../../resources/fonts/app_fonts.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
        border: Border.all(
          color: AppColors.dividerColor.withOpacity(0.5),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.search_rounded,
            color: AppColors.primaryColor,
            size: 26,
          ),
          const SizedBox(width: 12),
          Text(
            'What are you looking for?',
            style: AppFonts.bodyMedium.copyWith(
              color: AppColors.subTextColor,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
