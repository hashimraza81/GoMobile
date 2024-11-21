import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gomobile/utils/constants/app_colors.dart';

import '../constants/app_images.dart';
import '../constants/app_textstyle.dart';

class DriverProfile {
  final String name;
  final String role;
  final String position;
  final String imagePath;
  final Color? bg;

  DriverProfile({
    required this.name,
    required this.role,
    required this.position,
    required this.imagePath,
    this.bg,
  });
}

class DriverListTile extends StatelessWidget {
  final List<DriverProfile> driverList = [
    DriverProfile(
      name: 'John Doe',
      role: 'OJIREMO Linda',
      position: 'PRINCIPAL',
      imagePath: 'assets/images/profile_image.png',
      bg: const Color(0xFFE68139),
    ),
    DriverProfile(
      name: 'Jane Smith',
      role: 'OJIREMO Linda',
      position: 'BUS 1 - ABJ12465AU',
      imagePath: 'assets/images/profile_image.png',
      bg: const Color(0xFFE68139),
    ),
    DriverProfile(
      name: 'Jane Smith',
      role: 'OJIREMO Linda',
      position: 'BUS 1 - ABJ12465AU',
      imagePath: 'assets/images/profile_image.png',
      bg: const Color(0xFF4F4F4F),
    ),
    DriverProfile(
      name: 'Jane Smith',
      role: 'OJIREMO Linda',
      position: 'BUS 1 - ABJ12465AU',
      imagePath: 'assets/images/profile_image.png',
      bg: const Color(0xFFE68139),
    ),
    DriverProfile(
      name: 'Jane Smith',
      role: 'OJIREMO Linda',
      position: 'BUS 1 - ABJ12465AU',
      imagePath: 'assets/images/profile_image.png',
      bg: const Color(0xFF4F4F4F),
    ),
    DriverProfile(
      name: 'Jane Smith',
      role: 'OJIREMO Linda',
      position: 'BUS 1 - ABJ12465AU',
      imagePath: 'assets/images/profile_image.png',
      bg: const Color(0xFFE68139),
    ),
    DriverProfile(
      name: 'Jane Smith',
      role: 'OJIREMO Linda',
      position: 'BUS 1 - ABJ12465AU',
      imagePath: 'assets/images/profile_image.png',
      bg: const Color(0xFF4F4F4F),
    ),
    DriverProfile(
      name: 'Jane Smith',
      role: 'OJIREMO Linda',
      position: 'BUS 1 - ABJ12465AU',
      imagePath: 'assets/images/profile_image.png',
      bg: const Color(0xFFE68139),
    ),
  ];

  DriverListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: driverList.length,
      itemBuilder: (context, index) {
        // ignore: unused_local_variable
        final driver = driverList[index];
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
                    backgroundColor: const Color.fromARGB(255, 187, 197, 236),
                    radius: 30,
                    child: SvgPicture.asset(
                      AppImages.driver,
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
                      Text(
                        driver.role,
                        style: rStyleBlack10600.copyWith(
                            color: AppColors.student_theme_2),
                      ),
                      const SizedBox(height: 3),
                      //Name Label
                      Text(
                        driver.name,
                        style: rStyleBlack14700.copyWith(
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 3),
                      // Position Label
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 2),
                        decoration: BoxDecoration(
                          color: driver.bg,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          driver.position,
                          style: rStyleBlack12500.copyWith(
                            color: AppColors.white,
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
