import 'package:flutter/material.dart';

import '../colors/app_colors.dart';


class AppFonts {
  static const String fontFamily = 'Outfit'; // Assuming Outfit is used

  static TextStyle get headlineLarge => const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: AppColors.textColor,
        fontFamily: fontFamily,
      );

  static TextStyle get headlineMedium => const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: AppColors.textColor,
        fontFamily: fontFamily,
      );

  static TextStyle get titleLarge => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: AppColors.textColor,
        fontFamily: fontFamily,
      );

  static TextStyle get bodyLarge => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: AppColors.textColor,
        fontFamily: fontFamily,
      );

  static TextStyle get bodyMedium => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: AppColors.textColor,
        fontFamily: fontFamily,
      );

  static TextStyle get labelSmall => const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: AppColors.subTextColor,
        fontFamily: fontFamily,
      );
}