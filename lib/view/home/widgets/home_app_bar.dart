import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../resources/colors/app_colors.dart';
import '../../../resources/fonts/app_fonts.dart';
import '../../../resources/assets/images_assets.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  ImageAssets.leftIcon,
                  width: 28,
                  height: 28,
                ),
              ),
              const SizedBox(width: 12),
              Text(
                'PregnancyUAE',
                style: AppFonts.headlineMedium.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w600, // Poppins Semi-Bold
                  letterSpacing: -0.5,
                  fontFamily: AppFonts.fontFamily,
                  color: AppColors.pregnancyTextColor, // #1E2939
                ),
              ),
            ],
          ),
          Row(
            children: [
              _buildIconButtonAsset(ImageAssets.heartIcon),
              const SizedBox(width: 12),
              _buildIconButtonAsset(ImageAssets.notificationIconAsset),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildIconButton(IconData icon) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Icon(
        icon,
        color: AppColors.textColor,
        size: 24,
      ),
    );
  }

  Widget _buildIconButtonAsset(String assetPath) {
    final bool isSvg = assetPath.endsWith('.svg');
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: isSvg
          ? SvgPicture.asset(
              assetPath,
              width: 24,
              height: 24,
            )
          : Image.asset(
              assetPath,
              width: 24,
              height: 24,
            ),
    );
  }
}
