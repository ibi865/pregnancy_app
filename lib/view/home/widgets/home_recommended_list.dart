import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../resources/colors/app_colors.dart';
import '../../../resources/fonts/app_fonts.dart';

class HomeRecommendedList extends StatelessWidget {
  const HomeRecommendedList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildHeader(),
        const SizedBox(height: 16),
        _buildFilterChips(),
        const SizedBox(height: 24),
        _buildRecommendedCard(),
      ],
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'recommended_for_you'.tr,
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

  Widget _buildFilterChips() {
    // Replicating the chips from the image (Icon + Label)
    final chips = [
      {'label': 'prenatal_care'.tr, 'icon': Icons.pregnant_woman, 'color': Color(0xFFFFEBEE), 'iconColor': Color(0xFFF06292)}, // Pinkish
      {'label': 'baby_tracking'.tr, 'icon': Icons.child_care, 'color': Color(0xFFE3F2FD), 'iconColor': Color(0xFF64B5F6)}, // Blueish
      {'label': 'ultrasound'.tr, 'icon': Icons.monitor_heart, 'color': Color(0xFFF3E5F5), 'iconColor': Color(0xFFBA68C8)}, // Purplish
    ];

    return SizedBox(
      height: 48,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: chips.length,
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          final chip = chips[index];
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4), // Tight padding wrapper
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: AppColors.dividerColor),
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: chip['color'] as Color,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(chip['icon'] as IconData, color: chip['iconColor'] as Color, size: 20),
                ),
                const SizedBox(width: 8),
                Text(
                  chip['label'] as String,
                  style: AppFonts.bodyMedium.copyWith(fontWeight: FontWeight.w500),
                ),
                const SizedBox(width: 16), // Right padding inside chip
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildRecommendedCard() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image Section
          Stack(
            children: [
              Container(
                height: 180,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                  gradient: LinearGradient(
                    colors: [Color(0xFFE0F7FA), Color(0xFF80DEEA)], // Placeholder gradient
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: const Center(
                  child: Icon(Icons.image, size: 50, color: Colors.white54),
                ),
              ),
              // Heart Icon
              Positioned(
                top: 16,
                right: 16,
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.favorite, color: Colors.red, size: 20),
                ),
              ),
              // Profile Circle Overlay
              Positioned(
                bottom: -20, // Negative margin logic handled by SizedBox or Stack
                left: 20,
                child: Container(
                   // This part is tricky in a pure column, so we might need a transform or stack logic
                   // But simple relative positioning works best.
                ),
              ),
              Positioned(
                bottom: 12,
                right: 12,
                 child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.star, color: Colors.green, size: 12),
                        const SizedBox(width: 4),
                        Text('4.2', style: AppFonts.labelSmall.copyWith(fontWeight: FontWeight.bold)),
                        Text(' | 1.2k', style: AppFonts.labelSmall.copyWith(color: AppColors.subTextColor, fontSize: 10)),
                      ],
                    ),
                 ),
              ),
               // Dots
              Positioned(
                bottom: 12,
                left: 0, 
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildDot(true),
                    _buildDot(false),
                    _buildDot(false),
                    _buildDot(false),
                  ],
                ),
              )
            ],
          ),
          
          // Content Section
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Profile Overlap Fix (Visual Only) - actually let's put the profile pic here shifted up
                Transform.translate(
                  offset: const Offset(0, -50),
                  child: Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.end, // Align text bottom
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(3),
                            decoration: const BoxDecoration(
                              color: AppColors.white,
                              shape: BoxShape.circle,
                            ),
                            child: CircleAvatar(
                              radius: 28,
                              backgroundColor: AppColors.pastelPink, // Placeholder
                              child: const Icon(Icons.person, color: Colors.white), 
                            ),
                          ),
                          Container(
                             padding: const EdgeInsets.all(3),
                             decoration: const BoxDecoration(color: Colors.green, shape: BoxShape.circle),
                             child: const Icon(Icons.check, color: Colors.white, size: 10),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0, -35), // Pull up content to close gap
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        alignment: WrapAlignment.spaceBetween,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        spacing: 8,
                        runSpacing: 8, // Space between lines if it wraps
                        children: [
                          Text(
                            'Dr. Aisha Rahman',
                            style: AppFonts.headlineMedium.copyWith(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min, // Shrink to fit
                            children: [
                              _buildAvailabilityBadge('home_visit'.tr, isGreen: true),
                              const SizedBox(width: 8),
                              _buildAvailabilityBadge('at_provider'.tr, isGreen: false),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'calming_prenatal_massage'.tr,
                        style: AppFonts.headlineMedium.copyWith(fontSize: 22, fontWeight: FontWeight.bold, color: const Color(0xFF424242)),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'massage_description'.tr,
                        style: AppFonts.bodyMedium.copyWith(color: AppColors.subTextColor, height: 1.4),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.monetization_on_outlined, color: AppColors.textColor, size: 20),
                              const SizedBox(width: 6),
                              Text('starting_price'.tr, style: AppFonts.titleLarge.copyWith(fontSize: 16)),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.access_time, color: AppColors.textColor, size: 20),
                              const SizedBox(width: 6),
                              Text('duration'.tr, style: AppFonts.titleLarge.copyWith(fontSize: 16)),
                            ],
                          ),
                          Row(
                            children: [
                               const Icon(Icons.location_on_outlined, color: AppColors.textColor, size: 20),
                               const SizedBox(width: 6),
                               Text('Dubai', style: AppFonts.titleLarge.copyWith(fontSize: 16)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDot(bool isActive) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3),
      width: isActive ? 8 : 6,
      height: isActive ? 8 : 6,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.white.withOpacity(0.5),
        shape: BoxShape.circle,
      ),
    );
  }

  Widget _buildAvailabilityBadge(String text, {required bool isGreen}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: isGreen ? const Color(0xFFE8F5E9) : const Color(0xFFE3F2FD),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
           Icon(isGreen ? Icons.location_on_outlined : Icons.location_on_outlined, // Placeholder icon
             size: 14, color: isGreen ? Colors.green[700] : Colors.blue[700]), 
           const SizedBox(width: 4),
           Text(
            text,
            style: AppFonts.labelSmall.copyWith(
              color: isGreen ? Colors.green[700] : Colors.blue[700],
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
