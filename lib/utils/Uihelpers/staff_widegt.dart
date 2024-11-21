import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controller/staff_toggle_provider.dart';
import '../constants/app_colors.dart';
import '../constants/app_textstyle.dart';
import '../listTiles/staffListview.dart';
import 'staff_toggle_widget.dart';

class OurStaffWidget extends StatelessWidget {
  const OurStaffWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => StaffToggleProvider(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const StaffToggleWidget(),
          const SizedBox(height: 10),
          const SizedBox(height: 10),
          Consumer<StaffToggleProvider>(
            builder: (context, provider, child) {
              return provider.selectedStaffType == "Academic Staff"
                  ? const AcademicWidget()
                  : const NonAcademicWidget();
            },
          ),
        ],
      ),
    );
  }
}

class AcademicWidget extends StatelessWidget {
  const AcademicWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                height: 1,
                color: AppColors.blueAccent.withOpacity(0.3),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              decoration: BoxDecoration(
                color: AppColors.student_theme_2,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "MANAGEMENT STAFF",
                style: rStyleBlack12600.copyWith(
                  color: AppColors.parent_theme,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        StaffListView(),
      ],
    );
  }
}

class NonAcademicWidget extends StatelessWidget {
  const NonAcademicWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                height: 1,
                color: AppColors.blueAccent.withOpacity(0.3),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              decoration: BoxDecoration(
                color: AppColors.student_theme_2,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "MANAGEMENT STAFF",
                style: rStyleBlack12600.copyWith(
                  color: AppColors.parent_theme,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        StaffListView(),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 1,
                color: AppColors.blueAccent.withOpacity(0.3),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              decoration: BoxDecoration(
                color: AppColors.student_theme_2,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "OTHER STAFF",
                style: rStyleBlack12600.copyWith(
                  color: AppColors.parent_theme,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
