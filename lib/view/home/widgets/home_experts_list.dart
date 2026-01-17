import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../resources/colors/app_colors.dart';
import '../../../resources/fonts/app_fonts.dart';

class HomeExpertsList extends StatelessWidget {
  const HomeExpertsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildHeader(),
        const SizedBox(height: 16),
        SizedBox(
          height: 380, // Height to fit the detailed card
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 3, // Dummy count
            separatorBuilder: (context, index) => const SizedBox(width: 16),
            itemBuilder: (context, index) {
              return _buildExpertCard();
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
          'meet_experts'.tr,
          style: AppFonts.headlineMedium.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        TextButton(
          onPressed: () {},
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

  Widget _buildExpertCard() {
    return Container(
      width: 260,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: AppColors.dividerColor.withOpacity(0.5)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.02),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          // Profile Image Area
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.pastelPink, // Placeholder if no image
                  border: Border.all(color: AppColors.white, width: 4),
                  boxShadow: [
                    BoxShadow(
                       color: Colors.black.withOpacity(0.05),
                       blurRadius: 10,
                       offset: const Offset(0,5),
                    ),
                  ],
                ),
                child: ClipOval(
                  child: Icon(Icons.person, size: 60, color: AppColors.white), // Placeholder
                  // Image.asset(ImageAssets.expert1) would go here
                ),
              ),
              Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  color: AppColors.verifiedGreen,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.check, size: 12, color: AppColors.white),
              ),
            ],
          ),
          const SizedBox(height: 12),
          
          // Badge
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              color: AppColors.pastelPurple,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              'top_rated'.tr,
              style: AppFonts.labelSmall.copyWith(
                color: const Color(0xFF9C27B0), // Darker purple
                fontWeight: FontWeight.bold,
                fontSize: 10,
              ),
            ),
          ),
          const SizedBox(height: 12),
          
          // Name and Title
          Text(
            'Dr. Aisha Rahman',
            style: AppFonts.titleLarge.copyWith(fontSize: 18),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 4),
          Text(
            'Prenatal Massage Specialist',
            style: AppFonts.bodyMedium.copyWith(color: AppColors.subTextColor, fontSize: 13),
            textAlign: TextAlign.center,
          ),
          
          const SizedBox(height: 12),
          // Rating
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.star, color: AppColors.starYellow, size: 18),
              const SizedBox(width: 4),
              Text(
                '4.9',
                style: AppFonts.bodyLarge.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 4),
              Text(
                '(1.6k)',
                style: AppFonts.bodyMedium.copyWith(color: AppColors.subTextColor),
              ),
            ],
          ),
          
          const SizedBox(height: 16),
          // Tags
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildTag('prenatal'.tr),
              const SizedBox(width: 8),
              _buildTag('postpartum'.tr),
            ],
          ),
          
          const SizedBox(height: 12),
          // Location/Service Type
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildServiceTypeBadge('home_visit'.tr, isGreen: true),
              const SizedBox(width: 8),
              _buildServiceTypeBadge('at_provider'.tr, isGreen: false),
            ],
          ),
          
           const SizedBox(height: 16),
           // Location Pin
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               const Icon(Icons.location_on_outlined, size: 16, color: AppColors.textColor),
               const SizedBox(width: 4),
               Text(
                 'Dubai',
                 style: AppFonts.bodyMedium.copyWith(color: AppColors.textColor),
               ),
             ],
           ),
        ],
      ),
    );
  }

  Widget _buildTag(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: AppColors.tagBackground,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: AppFonts.labelSmall.copyWith(color: AppColors.subTextColor),
      ),
    );
  }
  
  Widget _buildServiceTypeBadge(String text, {required bool isGreen}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: isGreen ? const Color(0xFFE8F5E9) : const Color(0xFFE3F2FD), // Subtle green/blue
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
           Container(
             width: 4, height: 4,
             decoration: BoxDecoration(
               shape: BoxShape.circle,
               color: isGreen ? Colors.green : Colors.blue,
             ),
           ),
           const SizedBox(width: 6),
           Text(
            text,
            style: AppFonts.labelSmall.copyWith(
              color: isGreen ? Colors.green[700] : Colors.blue[700],
              fontSize: 10, 
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
