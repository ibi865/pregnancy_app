import 'package:flutter/material.dart';
import '../../../resources/colors/app_colors.dart';
import '../../../resources/fonts/app_fonts.dart';
import '../../../resources/assets/images_assets.dart';

class HomeProgressCard extends StatelessWidget {
  const HomeProgressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
        border: Border.all(
          color: AppColors.dividerColor.withOpacity(0.3),
        ),
      ),
      child: Stack(
        children: [
          // Gradient border on upper side
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 3,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFFF9A8D4), // #F9A8D4
                    Color(0xFFA78BFA), // #A78BFA
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
            ),
          ),
          // Content
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      ImageAssets.week18HeartIcon,
                      width: 28,
                      height: 28,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Week 18',
                          style: AppFonts.titleLarge.copyWith(
                            fontWeight: FontWeight.w600, // Poppins Semi-Bold
                            fontSize: 18,
                            fontFamily: AppFonts.fontFamily,
                            color: AppColors.zinc800, // zinc-800
                          ),
                        ),
                        Text(
                          '122 days left until due date',
                          style: AppFonts.labelSmall.copyWith(
                            fontSize: 14,
                            color: AppColors.subTextColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.dividerColor),
                    ),
                    child: const Icon(
                      Icons.arrow_forward,
                      size: 20,
                      color: AppColors.textColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          height: 10,
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor.withOpacity(0.05),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        FractionallySizedBox(
                          widthFactor: 0.75,
                          child: Container(
                            height: 10,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0xFFFFB2D1),
                                  Color(0xFF9E7AFF),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    '75%',
                    style: AppFonts.labelSmall.copyWith(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Text(
                'Expected Due: 21 Sep 2025',
                style: AppFonts.bodyMedium.copyWith(
                  color: AppColors.textColor.withOpacity(0.7),
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 15),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: AppColors.primaryColor.withOpacity(0.03),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  'This week\'s focus: Prepare for light exercises',
                  style: AppFonts.bodyMedium.copyWith(
                    color: AppColors.textColor,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
