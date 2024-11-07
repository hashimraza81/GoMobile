import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gomobile/utils/constants/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../controller/message_toggle_provider.dart';
import '../../utils/announcement_ListTile.dart';
import '../../utils/bottom_bar_student.dart';
import '../../utils/classAttendace_widget.dart';
import '../../utils/constants/app_images.dart';
import '../../utils/constants/app_textstyle.dart';
import '../../utils/homework_listTile.dart';
import '../../utils/school_attendance_widget.dart';

class StudentMessagesView extends StatelessWidget {
  const StudentMessagesView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MessageToggleProvider(),
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      'assets/Images/msgbg.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    child: Image.asset(
                      'assets/Images/msgheader.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width * 0.6,
                    top: 70,
                    right: 10,
                    child: CircleAvatar(
                      backgroundColor: AppColors.parent_theme.withOpacity(0.6),
                      radius: 90,
                      child: ClipOval(
                        child: Image.asset(
                          AppImages.glogo,
                          fit: BoxFit.cover,
                          width: 150,
                          height: 150,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 10,
                    top: 290,
                    right: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF542A06).withOpacity(0.5),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: SvgPicture.asset(
                              AppImages.arrow,
                              width: 50,
                              height: 50,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 160,
                    top: 290,
                    right: 10,
                    child: Text(
                      'BABATUNDE\nBoluwatiferenmi\nBoluwatiferenmi',
                      style: rStyleBlack14900.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 250,
                    child: CircleAvatar(
                      backgroundColor: const Color(0xFFD9D9D9).withOpacity(0.4),
                      radius: 70,
                      child: ClipOval(
                        child: Image.asset(
                          AppImages.vector,
                          fit: BoxFit.cover,
                          width: 122,
                          height: 122,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 15,
                        ),
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'GOMOBILE\n',
                                style: rStyleBlack20800.copyWith(
                                    color: AppColors.white),
                              ),
                              TextSpan(
                                text: 'SCHOOL INFORMATION\n',
                                style: rStyleBlack20500.copyWith(
                                    color: AppColors.white),
                              ),
                              TextSpan(
                                text: 'MANAGEMENT\n',
                                style: rStyleBlack20500.copyWith(
                                    color: AppColors.white),
                              ),
                              TextSpan(
                                text: 'SYSTEM',
                                style: rStyleBlack20500.copyWith(
                                    color: AppColors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 15,
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: AppColors.student_theme_2,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              _buildAvatar(AppImages.female),
                              _buildAvatar(AppImages.male),
                              _buildAvatar(AppImages.female),
                              _buildAvatar(AppImages.male),
                            ],
                          ),
                        ),
                      ),
                      Consumer<MessageToggleProvider>(
                        builder: (context, provider, child) {
                          String title;
                          Widget contentWidget;

                          switch (provider.selectedType) {
                            case MessageType.homework:
                              title = 'HOMEWORK';
                              contentWidget = HomeworkListtile();
                              break;
                            case MessageType.attendance:
                              title = 'ATTENDANCE';
                              contentWidget = Column(
                                children: [
                                  // _buildAttendanceToggle(
                                  //     context), // Show the toggle here
                                  provider.selectedAttendanceType ==
                                          AttendanceType.classAttendance
                                      ? const ClassAttendanceWidget()
                                      : const SchoolAttendanceWidget(),
                                ],
                              );
                              break;
                            case MessageType.announcement:
                            default:
                              title = 'ANNOUNCEMENT';
                              contentWidget = AnnouncementListTile();
                              break;
                          }

                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 210.0),
                                child: Material(
                                  elevation: 6,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(50),
                                    topRight: Radius.circular(50),
                                  ),
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        decoration: const BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black,
                                              offset: Offset.zero,
                                              blurRadius: 2.4,
                                              spreadRadius: 0.0,
                                              blurStyle: BlurStyle.outer,
                                            ),
                                          ],
                                          color: AppColors.white,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(50),
                                            topRight: Radius.circular(50),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 30.0,
                                            horizontal: 10,
                                          ),
                                          child: Column(
                                            children: [
                                              provider.selectedType ==
                                                      MessageType.attendance
                                                  ? _buildAttendanceToggle(
                                                      context,
                                                    )
                                                  : Container(
                                                      height: 30,
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        border: Border.all(
                                                          width: 1,
                                                          color: const Color(
                                                              0xFFEB5757),
                                                        ),
                                                      ),
                                                    ),
                                              const SizedBox(height: 10),
                                              contentWidget,
                                              const SizedBox(height: 30),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 18,
                                        left:
                                            MediaQuery.of(context).size.width *
                                                0.6,
                                        child: Container(
                                          color: AppColors.white,
                                          child: Text(
                                            title,
                                            style: rStyleBlack15600.copyWith(
                                                color: Colors.black),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                  Positioned(
                    top: 395,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildIcon(context, MessageType.announcement,
                            AppImages.announcement),
                        _buildIcon(
                            context, MessageType.homework, AppImages.homework),
                        _buildIcon(context, MessageType.attendance,
                            AppImages.attendence),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: const BottomBarStudent(),
        ),
      ),
    );
  }

  Widget _buildIcon(BuildContext context, MessageType type, String iconPath) {
    return Consumer<MessageToggleProvider>(
      builder: (context, provider, child) {
        bool isSelected = provider.selectedType == type;
        return GestureDetector(
          onTap: () => provider.setType(type),
          child: Column(
            children: [
              if (isSelected)
                const CircleAvatar(
                  radius: 5,
                  backgroundColor: Colors.red,
                ),
              const SizedBox(
                height: 3,
              ),
              SvgPicture.asset(iconPath),
            ],
          ),
        );
      },
    );
  }
}

Widget _buildAvatar(String imagePath) {
  return Padding(
    padding: const EdgeInsets.only(right: 8.0),
    child: CircleAvatar(
      radius: 20,
      backgroundColor: Colors.white,
      child: ClipOval(
        child: SvgPicture.asset(
          imagePath,
          width: 36,
          height: 36,
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}

//////////////////////////

Widget _buildAttendanceToggle(BuildContext context) {
  return Consumer<MessageToggleProvider>(
    builder: (context, provider, child) {
      return Container(
        padding: const EdgeInsets.all(8),
        //  width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            width: 1,
            color: const Color(0xFFEB5757),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildToggleButton(
              context,
              provider,
              text: 'Class Attendance',
              type: AttendanceType.classAttendance,
            ),
            _buildToggleButton(
              context,
              provider,
              text: 'School Attendance',
              type: AttendanceType.schoolAttendance,
            ),
          ],
        ),
      );
    },
  );
}

Widget _buildToggleButton(BuildContext context, MessageToggleProvider provider,
    {required String text, required AttendanceType type}) {
  bool isSelected = provider.selectedAttendanceType == type;
  return GestureDetector(
    onTap: () => provider.setAttendanceType(type),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Text(
            text,
            style: GoogleFonts.roboto(
              fontSize: 15,
              color: isSelected ? Colors.red : Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          if (isSelected)
            Container(
              margin: const EdgeInsets.only(top: 4),
              width: 20,
              height: 3,
              color: const Color(0xFFF2994A),
            ),
        ],
      ),
    ),
  );
}
