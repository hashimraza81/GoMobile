import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gomobile/utils/constants/app_images.dart';

import '../constants/app_textstyle.dart';

class TimeTable {
  final String period;
  final String subject;
  final String clas;
  final String name;
  final Color? backgroundColor;
  final Color? backgroundColor1;
  final String imagePath;
  final String time;
  final String date;

  TimeTable({
    required this.period,
    required this.subject,
    required this.clas,
    required this.name,
    required this.imagePath,
    required this.time,
    required this.date,
    this.backgroundColor,
    this.backgroundColor1,
  });
}

class ContinousAssessmentListtile extends StatelessWidget {
  final List<TimeTable> assessmentlist = [
    TimeTable(
      period: '1st Period',
      subject: 'Physics',
      clas: 'Primary 5 - A - Primary',
      name: 'Paul Sailas',
      imagePath: AppImages.male,
      time: '10:35 AM - 12:30 PM',
      date: '20th Nov, 2024',
      backgroundColor: const Color(0xFFF2994A),
      backgroundColor1: const Color(0xFFFFC896),
    ),
    TimeTable(
      period: '1st Period',
      subject: 'Information Communication',
      clas: 'Primary 5 - A - Primary',
      name: 'TIMOTHY Akingbade',
      imagePath: AppImages.male,
      time: '10:35 AM - 12:30 PM',
      date: '20th Nov, 2024',
      backgroundColor: const Color(0xFFF2994A),
      backgroundColor1: const Color(0xFFFFC896),
    ),
    TimeTable(
      period: '1st Period',
      subject: 'English Language',
      clas: 'Primary 5 - A - Primary',
      name: 'OLUREMI Olatunde',
      imagePath: AppImages.female,
      time: '10:35 AM - 12:30 PM',
      date: '20th Nov, 2024',
      backgroundColor: const Color(0xFFF2994A),
      backgroundColor1: const Color(0xFFFFC896),
    ),
    TimeTable(
      period: '1st Period',
      subject: 'Biology',
      clas: 'Primary 5 - A - Primary',
      name: 'FELIX Idaunsi',
      imagePath: AppImages.male,
      time: '10:35 AM - 12:30 PM',
      date: '20th Nov, 2024',
      backgroundColor: const Color(0xFFF2994A),
      backgroundColor1: const Color(0xFFFFC896),
    ),
  ];

  ContinousAssessmentListtile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: assessmentlist.length,
      itemBuilder: (context, index) {
        // ignore: unused_local_variable
        final assessments = assessmentlist[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    assessments.time,
                    style: rStyleBlack12500.copyWith(
                      color: const Color(0xFF4F4F4F),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: assessments.backgroundColor1,
                    ),
                    child: Text(
                      assessments.date,
                      style: rStyleBlack10800.copyWith(
                        color: const Color(0xFF333333),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    child: ClipOval(
                      child: SvgPicture.asset(
                        assessments.imagePath,
                        width: 90,
                        height: 90,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: assessments.backgroundColor1,
                        ),
                        child: Text(
                          assessments.period,
                          style: rStyleBlack10800.copyWith(
                            color: const Color(0xFF333333),
                          ),
                        ),
                      ),
                      const SizedBox(height: 3),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Text(
                          assessments.subject,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: rStyleBlack14600.copyWith(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: assessments.backgroundColor,
                        ),
                        child: Text(
                          assessments.clas,
                          style: rStyleBlack10600.copyWith(
                            color: const Color(0xFF333333),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        assessments.name,
                        style: rStyleBlack12600.copyWith(
                          color: Colors.black,
                        ),
                      )
                    ],
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

/// Classroom Tile

class ClassRoomAssessmentListtile extends StatelessWidget {
  final List<TimeTable> assessmentlist = [
    TimeTable(
      period: '1st Period',
      subject: 'Physics',
      clas: 'Primary 5 - A - Primary',
      name: 'Paul Sailas',
      imagePath: AppImages.male,
      time: '10:35 AM - 12:30 PM',
      date: '20th Nov, 2024',
      backgroundColor: const Color(0xFFF2994A),
      backgroundColor1: const Color(0xFFFFC896),
    ),
    TimeTable(
      period: '1st Period',
      subject: 'Information Communication',
      clas: 'Primary 5 - A - Primary',
      name: 'TIMOTHY Akingbade',
      imagePath: AppImages.male,
      time: '10:35 AM - 12:30 PM',
      date: '20th Nov, 2024',
      backgroundColor: const Color(0xFFF2994A),
      backgroundColor1: const Color(0xFFFFC896),
    ),
    TimeTable(
      period: '1st Period',
      subject: 'English Language',
      clas: 'Primary 5 - A - Primary',
      name: 'OLUREMI Olatunde',
      imagePath: AppImages.female,
      time: '10:35 AM - 12:30 PM',
      date: '20th Nov, 2024',
      backgroundColor: const Color(0xFFF2994A),
      backgroundColor1: const Color(0xFFFFC896),
    ),
    TimeTable(
      period: '1st Period',
      subject: 'Biology',
      clas: 'Primary 5 - A - Primary',
      name: 'FELIX Idaunsi',
      imagePath: AppImages.male,
      time: '10:35 AM - 12:30 PM',
      date: '20th Nov, 2024',
      backgroundColor: const Color(0xFFF2994A),
      backgroundColor1: const Color(0xFFFFC896),
    ),
  ];

  ClassRoomAssessmentListtile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: assessmentlist.length,
      itemBuilder: (context, index) {
        // ignore: unused_local_variable
        final assessments = assessmentlist[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    assessments.time,
                    style: rStyleBlack12500.copyWith(
                      color: const Color(0xFF4F4F4F),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    child: ClipOval(
                      child: SvgPicture.asset(
                        assessments.imagePath,
                        width: 90,
                        height: 90,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: assessments.backgroundColor1,
                        ),
                        child: Text(
                          assessments.period,
                          style: rStyleBlack10800.copyWith(
                            color: const Color(0xFF333333),
                          ),
                        ),
                      ),
                      const SizedBox(height: 3),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Text(
                          assessments.subject,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: rStyleBlack14600.copyWith(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: assessments.backgroundColor,
                        ),
                        child: Text(
                          assessments.clas,
                          style: rStyleBlack10600.copyWith(
                            color: const Color(0xFF333333),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        assessments.name,
                        style: rStyleBlack12600.copyWith(
                          color: Colors.black,
                        ),
                      )
                    ],
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
