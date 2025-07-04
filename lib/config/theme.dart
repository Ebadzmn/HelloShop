import 'package:e_commarce_v2_flutter/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryButton,
              foregroundColor: Colors.white,
              padding:
                  const EdgeInsets.symmetric(horizontal: 120, vertical: 16),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)))),
      inputDecorationTheme: InputDecorationTheme(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
          border: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white70, width: 0.7)),
          hintStyle: GoogleFonts.inter(
              textStyle: const TextStyle(fontSize: 16, color: Colors.black))));
}
