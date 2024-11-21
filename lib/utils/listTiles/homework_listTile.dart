import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gomobile/utils/constants/app_colors.dart';

import '../constants/app_images.dart';
import '../constants/app_textstyle.dart';

class Homework {
  final String status;
  final String subject;
  final String name;
  final Color? backgroundColor;
  final Color? backgroundColor1;
  final String imagePath;
  final String years;
  final String formate;

  Homework({
    required this.status,
    required this.subject,
    required this.name,
    required this.imagePath,
    required this.years,
    required this.formate,
    this.backgroundColor,
    this.backgroundColor1,
  });
}

class HomeworkListtile extends StatelessWidget {
  final List<Homework> homeworklist = [
    Homework(
      status: 'Awaiting Submission',
      subject: 'Further Mathematics',
      name: 'Paul Sailas',
      imagePath: AppImages.male,
      years: '2 years ago',
      formate: AppImages.jPG,
      backgroundColor1: AppColors.student_theme_2.withOpacity(0.3),
      backgroundColor: AppColors.blue,
    ),
    Homework(
      status: 'Submitted',
      subject: 'Biology',
      name: 'Paul Sailas',
      imagePath: AppImages.male,
      years: '2 years ago',
      formate: AppImages.doc,
      backgroundColor1: AppColors.student_theme_2.withOpacity(0.3),
      backgroundColor: AppColors.green,
    ),
    Homework(
      status: 'Submitted',
      subject: 'Biology',
      name: 'BAMIDELE Folashade',
      imagePath: AppImages.female,
      years: '2 years ago',
      formate: AppImages.pPT,
      backgroundColor1: AppColors.parent_theme.withOpacity(0.3),
      backgroundColor: AppColors.green,
    ),
    Homework(
      status: "Missed Deadline",
      subject: 'Mathematics',
      name: 'OJOMEGBO Rita',
      imagePath: AppImages.female,
      years: '2 years ago',
      formate: AppImages.excel,
      backgroundColor1: AppColors.parent_theme.withOpacity(0.3),
      backgroundColor: AppColors.maroon,
    ),
  ];

  HomeworkListtile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: homeworklist.length,
      itemBuilder: (context, index) {
        final homework = homeworklist[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Profile image and labels
              Row(
                children: [
                  // Profile Image
                  CircleAvatar(
                    backgroundColor: homework.backgroundColor1,
                    radius: 35,
                    child: SvgPicture.asset(
                      homework.imagePath,
                    ),
                  ),
                  const SizedBox(width: 8),
                  // Labels
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: homework.backgroundColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            homework.status, // Access the title
                            style: rStyleBlack10800.copyWith(
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 3),
                      // Name Label
                      Text(
                        homework.subject, // Access the title
                        style: rStyleBlack14700.copyWith(
                          color: AppColors.student_theme_2,
                        ),
                      ),
                      const SizedBox(height: 3),
                      // Position Label
                      Text(
                        homework.name, // Access the years
                        style: rStyleBlack12400.copyWith(
                          color: const Color(0xFF4F4F4F),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              // Phone Icon Button
              Column(
                children: [
                  Text(
                    homework.years,
                    style: rStyleBlack12400.copyWith(
                      color: const Color(0xFF4F4F4F),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Image.asset(
                    homework.formate,
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
