import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'constants/app_colors.dart';
import 'constants/app_images.dart';
import 'constants/app_textstyle.dart';

class StaffProfile {
  final String name;
  final String role;
  final String position;
  final String imagePath;

  StaffProfile({
    required this.name,
    required this.role,
    required this.position,
    required this.imagePath,
  });
}

class StaffListView extends StatelessWidget {
  final List<StaffProfile> staffList = [
    StaffProfile(
      name: 'John Doe',
      role: 'Head of School',
      position: 'PRINCIPAL',
      imagePath: 'assets/images/profile_image.png',
    ),
    StaffProfile(
      name: 'Jane Smith',
      role: 'Assistant Head',
      position: 'VICE-PRINCIPAL (ADMIN)',
      imagePath: 'assets/images/profile_image.png',
    ),
    StaffProfile(
      name: 'Jane Smith',
      role: 'Assistant Head',
      position: 'VICE-PRINCIPAL (ADMIN)',
      imagePath: 'assets/images/profile_image.png',
    ),
    StaffProfile(
      name: 'Jane Smith',
      role: 'Assistant Head',
      position: 'VICE-PRINCIPAL (ADMIN)',
      imagePath: 'assets/images/profile_image.png',
    ),
    StaffProfile(
      name: 'Jane Smith',
      role: 'Assistant Head',
      position: 'VICE-PRINCIPAL (ADMIN)',
      imagePath: 'assets/images/profile_image.png',
    ),
  ];

  StaffListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: staffList.length,
      itemBuilder: (context, index) {
        final staff = staffList[index];
        return Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 5.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Profile image and labels
              Row(
                children: [
                  // Profile Image
                  CircleAvatar(
                    backgroundColor: const Color(0xFFC0C2CA),
                    radius: 30,
                    child: SvgPicture.asset(
                      AppImages.male,
                      width: 40,
                      height: 40,
                    ),
                  ),
                  const SizedBox(width: 8),
                  // Labels
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Role Label
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 2),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFDDDC1),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          staff.role,
                          style: rStyleBlack10600.copyWith(
                              color: AppColors.student_theme_2),
                        ),
                      ),
                      const SizedBox(height: 3),
                      //Name Label
                      Text(
                        staff.name,
                        style: rStyleBlack12600.copyWith(
                          color: AppColors.student_theme_2,
                        ),
                      ),
                      const SizedBox(height: 3),
                      // Position Label
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 2),
                        decoration: BoxDecoration(
                          color: AppColors.orangeAccent,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          staff.position,
                          style: rStyleBlack12500.copyWith(
                            color: AppColors.student_theme_2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              // Phone Icon Button
              CircleAvatar(
                radius: 20,
                backgroundColor: AppColors.student_theme_2,
                child: SvgPicture.asset(
                  AppImages.phone1,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
