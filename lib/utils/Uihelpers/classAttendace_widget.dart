import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gomobile/utils/constants/app_colors.dart';
import 'package:gomobile/utils/constants/app_images.dart';
import 'package:gomobile/utils/constants/app_textstyle.dart';

import '../listTiles/class_attendance_listTile.dart';

class ClassAttendanceWidget extends StatelessWidget {
  const ClassAttendanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.student_theme_2,
              ),
              child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset(AppImages.arrow1)),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.orange,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SvgPicture.asset(AppImages.calender1),
                    Text(
                      ' | Tue 25th May, 2024',
                      style: rStyleBlack16700.copyWith(color: AppColors.white),
                    )
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.student_theme_2,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: SvgPicture.asset(AppImages.arrow3),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        ClassAttendanceListTile(),
        const SizedBox(height: 10),
      ],
    );
  }
}
