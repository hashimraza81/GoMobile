import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gomobile/utils/constants/app_colors.dart';

import 'constants/app_images.dart';
import 'constants/app_textstyle.dart';

class Attendance {
  final String title;
  final String subTitle;
  final String date;
  final Color? backgroundColor;
  final String imagePath;
  final String time;

  final Color? backgroundColor1;

  Attendance({
    required this.title,
    required this.subTitle,
    required this.date,
    required this.imagePath,
    required this.time,
    this.backgroundColor,
    this.backgroundColor1,
  });
}

class ClassAttendanceListTile extends StatelessWidget {
  final List<Attendance> attendancelist = [
    Attendance(
      title: 'PRESENT',
      subTitle: 'Morning Attendance',
      date: '25th May 2024',
      imagePath: AppImages.present,
      time: '30 min ago',
      backgroundColor: const Color(0xFF0489C2),
      backgroundColor1: const Color(0xFF054E24),
    ),
    Attendance(
      title: 'ABSENT',
      subTitle: 'Afternoon Attendance',
      date: '25th May 2024',
      imagePath: AppImages.absent,
      time: '1 hr ago',
      backgroundColor: const Color(0xFFB2700D),
      backgroundColor1: const Color(0xFF6A0303),
    ),
    Attendance(
      title: 'PRESENT',
      subTitle: 'Daily Attendance',
      date: '25th May 2024',
      imagePath: AppImages.present,
      time: '1 hr ago',
      backgroundColor: AppColors.student_theme_2,
      backgroundColor1: const Color(0xFF054E24),
    ),
  ];

  ClassAttendanceListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: attendancelist.length,
      itemBuilder: (context, index) {
        final attendance = attendancelist[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  // Profile Image
                  SvgPicture.asset(
                    attendance.imagePath,
                  ),
                  const SizedBox(width: 8),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //TITLE
                      Text(
                        attendance.title, // Access the title
                        style: rStyleBlack14700.copyWith(
                          color: attendance.backgroundColor1,
                        ),
                      ),
                      const SizedBox(height: 3),
                      // SUBTITLE
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: attendance.backgroundColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            attendance.subTitle,
                            style: rStyleBlack12600.copyWith(
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 3,
                      ),

                      Text(
                        attendance.date,
                        style: rStyleBlack10600.copyWith(
                          color: AppColors.student_theme_2,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    attendance.time,
                    style: rStyleBlack12400.copyWith(
                      color: const Color(0xFF4F4F4F),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
