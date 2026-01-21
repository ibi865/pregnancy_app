import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../resources/colors/app_colors.dart';
import '../../../resources/fonts/app_fonts.dart';
import '../../../resources/assets/images_assets.dart';

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
          SvgPicture.asset(
            ImageAssets.searchIconAsset,
            width: 26,
            height: 26,
            colorFilter: ColorFilter.mode(
              AppColors.searchIconColor, // #E60076
              BlendMode.srcIn,
            ),
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
