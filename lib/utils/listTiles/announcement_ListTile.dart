import 'package:flutter/material.dart';
import 'package:gomobile/utils/constants/app_colors.dart';
import 'package:gomobile/utils/constants/app_textstyle.dart';

import '../constants/app_images.dart';

class Announcement {
  final String title;
  final String subTitle;
  final Color? backgroundColor;
  final String imagePath;
  final String years;
  final String formate;

  Announcement({
    required this.title,
    required this.subTitle,
    required this.imagePath,
    required this.years,
    required this.formate,
    this.backgroundColor,
  });
}

class AnnouncementListTile extends StatelessWidget {
  final List<Announcement> announcementList = [
    Announcement(
      title: 'PTA Meeting',
      subTitle: 'Up to 160 characters are considered....',
      imagePath: 'P',
      years: '2 years ago',
      formate: AppImages.excel,
      backgroundColor: AppColors.student_theme_2,
    ),
    Announcement(
      title: 'Attention Parents',
      subTitle: 'Up to 160 characters are considered....',
      imagePath: 'A',
      years: '2 years ago',
      formate: AppImages.pPT,
      backgroundColor: AppColors.parent_theme.withOpacity(0.3),
    ),
    Announcement(
      title: 'Newsletter',
      subTitle: 'Up to 160 characters are considered....',
      imagePath: 'N',
      years: '2 years ago',
      formate: AppImages.pDF,
      backgroundColor: AppColors.student_theme_2,
    ),
    Announcement(
      title: "Children's Day",
      subTitle: 'Up to 160 characters are considered....',
      imagePath: 'C',
      years: '2 years ago',
      formate: AppImages.doc,
      backgroundColor: AppColors.parent_theme.withOpacity(0.3),
    ),
  ];

  AnnouncementListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: announcementList.length,
      itemBuilder: (context, index) {
        final announcement = announcementList[index];
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
                    backgroundColor: announcement.backgroundColor,
                    radius: 30,
                    child: Text(
                      announcement.imagePath,
                      style: rStyleBlack25500.copyWith(color: AppColors.white),
                    ),
                  ),
                  const SizedBox(width: 8),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        announcement.title, // Title Label
                        style: rStyleBlack14700.copyWith(
                          color: AppColors.student_theme_2,
                        ),
                      ),
                      const SizedBox(height: 3),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Text(
                          announcement.subTitle, // Access the title
                          maxLines: 1,

                          style: rStyleBlack12400.copyWith(
                            color: AppColors.student_theme_2,
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
                    announcement.years,
                    style: rStyleBlack12400.copyWith(
                      color: const Color(0xFF4F4F4F),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Image.asset(
                    announcement.formate,
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
