// ABOUT US WIDGET
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/app_colors.dart';
import '../constants/app_images.dart';
import '../constants/app_textstyle.dart';

class AboutUsWidget extends StatelessWidget {
  const AboutUsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Material(
          elevation: 10,
          borderRadius: BorderRadius.circular(20),
          color: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mission Statement',
                    style: rStyleBlack14700.copyWith(
                      color: AppColors.student_theme_2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Challenge, Collaborate, Empower: Inspiring Global Citizens to be Lifelong Learners.\nVision\nThe AISA vision is to be a world-class international\nschool that develops students’ skills, knowledge and character to enable them to achieve their full potential and pursue their dreams.\nProfile of An AISA graduate\n • Is passionate and self-motivated in pursuing their individual personal and academic interests.\n • Models integrity and respects the local and global community, its people, and the environment.\n • Exhibits strong social, communication, and leadership skills.\n • Seeks, builds, and maintains personal and professional networks',
                    textAlign: TextAlign.justify,
                    style: rStyleBlack12400.copyWith(
                      color: AppColors.student_theme_2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'What are Core Values',
                    style: rStyleBlack14700.copyWith(
                      color: AppColors.student_theme_2,
                    ),
                  ),
                  Text(
                    'Core Values articulate the essential ingredients necessary for any school’s success and in turn define the non-negotiable principles that help us to connect',
                    style: rStyleBlack12400.copyWith(
                      color: AppColors.student_theme_2,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        // Bottom Social Icons
        Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(50),
          color: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset(AppImages.website),
                  SvgPicture.asset(AppImages.email),
                  SvgPicture.asset(AppImages.phone),
                  SvgPicture.asset(AppImages.timeicon),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
