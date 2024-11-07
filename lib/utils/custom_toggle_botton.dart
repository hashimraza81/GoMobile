import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants/app_colors.dart';

// ignore: must_be_immutable
class ToggleButton extends StatelessWidget {
  final String text;
  final bool isActive;
  GestureTapCallback? ontap;

  ToggleButton(
      {super.key, required this.text, required this.isActive, this.ontap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: isActive ? Colors.white : Colors.transparent,
          borderRadius: isActive ? BorderRadius.circular(20) : null,
        ),
        child: InkWell(
          onTap: ontap,
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.roboto(
                fontSize: 12,
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
