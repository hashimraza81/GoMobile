import 'package:flutter/material.dart';

import '../../utils/bottom_bar_student.dart';

class StudentCalendarView extends StatelessWidget {
  const StudentCalendarView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: BottomBarStudent(),
      body: Center(
        child: Text('data'),
      ),
    );
  }
}
