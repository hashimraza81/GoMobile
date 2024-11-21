import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_colors.dart';

// ignore: must_be_immutable
class ToggleButton extends StatelessWidget {
  final String text;
  final bool isActive;
  final double? fontSize;
  GestureTapCallback? ontap;

  ToggleButton({
    super.key,
    required this.text,
    required this.isActive,
    this.ontap,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: ontap,
      child: Container(
        // padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: isActive ? Colors.white : Colors.transparent,
          borderRadius: isActive ? BorderRadius.circular(20) : null,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.02,
            vertical: screenWidth * 0.03,
          ),
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.roboto(
                fontSize: fontSize ?? 10,
                fontWeight: FontWeight.w600,
                color: isActive
                    ? AppColors.student_theme_2
                    : AppColors.parent_theme,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
