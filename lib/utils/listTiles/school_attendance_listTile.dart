import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gomobile/utils/constants/app_colors.dart';

import '../constants/app_images.dart';
import '../constants/app_textstyle.dart';

class Attendance {
  final String title;
  final String subTitle;
  final String role;
  final Color? backgroundColor;
  final String imagePath;
  final String time;

  final Color? backgroundColor1;

  Attendance({
    required this.title,
    required this.subTitle,
    required this.role,
    required this.imagePath,
    required this.time,
    this.backgroundColor,
    this.backgroundColor1,
  });
}

class SchoolAttendanceListTile extends StatelessWidget {
  final List<Attendance> attendancelist = [
    Attendance(
      title: 'School Bus Driver',
      subTitle: 'LADOJA Temidayo Dele',
      role: 'Home Pick-up',
      imagePath: AppImages.driver,
      time: '3:56PM',
      backgroundColor: const Color(0xFF154381),
      backgroundColor1: const Color(0xFF078C2C),
    ),
    Attendance(
      title: 'School Bus Driver',
      subTitle: 'LADOJA Temidayo Dele',
      role: 'Home Drop-off',
      imagePath: AppImages.driver,
      time: '3:56PM',
      backgroundColor: const Color(0xFF154381),
      backgroundColor1: const Color(0xFF067CBF),
    ),
    Attendance(
      title: 'OGUNRUMADE Olumide Damilare',
      subTitle: 'Daily Attendance',
      role: 'Check-in',
      imagePath: AppImages.male,
      time: '3:56PM',
      backgroundColor: AppColors.student_theme_2,
      backgroundColor1: const Color(0xFF078C2C),
    ),
  ];

  SchoolAttendanceListTile({super.key});

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
                  CircleAvatar(
                    backgroundColor: const Color(0xFFB2E7FA),
                    radius: 35,
                    child: SvgPicture.asset(
                      attendance.imagePath,
                    ),
                  ),
                  const SizedBox(width: 8),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //TITLE
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: attendance.backgroundColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            attendance.title, // Access the title
                            style: rStyleBlack10600.copyWith(
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 3),
                      // SUBTITLE

                      Text(
                        attendance.subTitle,
                        style: rStyleBlack12600.copyWith(
                          color: AppColors.student_theme_2,
                        ),
                      ),

                      const SizedBox(
                        height: 3,
                      ),

                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: attendance.backgroundColor1,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            attendance.role,
                            style: rStyleBlack10600.copyWith(
                              color: AppColors.white,
                            ),
                          ),
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
                  SvgPicture.asset(
                    AppImages.qr,
                  )
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
