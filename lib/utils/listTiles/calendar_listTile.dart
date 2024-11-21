import 'package:flutter/material.dart';
import 'package:gomobile/utils/constants/app_textstyle.dart';

import '../constants/app_colors.dart';

class Calendar {
  final String title;
  final String date;
  final Color? backgroundColor;

  Calendar({
    required this.title,
    required this.date,
    this.backgroundColor,
  });
}

class CalendarListtile extends StatelessWidget {
  final List<Calendar> calendarList = [
    Calendar(
      title: 'Mothers Day',
      date: '25th May 2024',
      backgroundColor: const Color(0xFFFCD5FF),
    ),
    Calendar(
      title: 'PTA Meeting',
      date: '25th May 2024',
      backgroundColor: const Color(0xFFDBFF00),
    ),
    Calendar(
      title: 'Inter-House Sport',
      date: '25th May 2024',
      backgroundColor: const Color(0xFF4BFACB),
    ),
    Calendar(
      title: 'PTA Meeting',
      date: '25th May 2024',
      backgroundColor: const Color(0xFFDBFF00),
    ),
    Calendar(
      title: 'Inter-House Sport',
      date: '25th May 2024',
      backgroundColor: const Color(0xFF4BFACB),
    ),
    Calendar(
      title: 'Mothers Day',
      date: '25th May 2024',
      backgroundColor: const Color(0xFFFCD5FF),
    ),
  ];

  CalendarListtile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: calendarList.length,
      itemBuilder: (context, index) {
        final calendar1 = calendarList[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(4),
                color: calendar1.backgroundColor,
                child: Text(
                  calendar1.title,
                  style: rStyleBlack15600.copyWith(
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                calendar1.date,
                style: rStyleBlack10400.copyWith(
                  color: AppColors.student_theme_2,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
