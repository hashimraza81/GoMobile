import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gomobile/controller/time_table_toggle_provider.dart';
import 'package:gomobile/utils/constants/app_colors.dart';
import 'package:gomobile/utils/constants/app_images.dart';
import 'package:gomobile/utils/constants/app_textstyle.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../utils/bottomBar/bottom_bar_student.dart';
import '../../utils/listTiles/events_listTile.dart';
import '../Staff/staff_login_view.dart';

class StudentTimetableView extends StatelessWidget {
  const StudentTimetableView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const BottomBarStudent(),
        body: SizedBox(
          width: double.infinity,
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  'assets/Images/eventsbg.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Image.asset(
                  AppImages.eventsHeader,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 135,
                left: 15,
                child: SvgPicture.asset(
                  AppImages.timetableIcon,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 12,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () => Navigator.pop(context),
                          child: SvgPicture.asset(
                            AppImages.backArrow,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(4),
                          color: const Color(0xFFF5E6DB),
                          child: Text(
                            'EVENTS',
                            style: rStyleBlack14600.copyWith(
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //Text

                    Text(
                      "      This section offers parents concise, detailed updates on\n school events, encompassing timings, venues, and essential details, ensuring they are informed and prepared for their children's participation.",
                      style: GoogleFonts.roboto(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.end,
                    ),

                    const SizedBox(
                      height: 90,
                    ),

                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: AppColors.student_theme_2,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Consumer<TimeTableToggleProvider>(
                        builder: (context, toggleProvider, child) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // mainAxisSize: MainAxisSize.min,
                            children: [
                              ToggleButton(
                                text: "CLASSROOM",
                                isActive:
                                    toggleProvider.selectedTab == "CLASSROOM",
                                ontap: () {
                                  toggleProvider.setTab("CLASSROOM");
                                },
                              ),
                              ToggleButton(
                                text: "CONTINUOS ASSESSMENT",
                                isActive: toggleProvider.selectedTab ==
                                    "CONTINUOS ASSESSMENT",
                                ontap: () {
                                  toggleProvider.setTab("CONTINUOS ASSESSMENT");
                                },
                              ),
                              ToggleButton(
                                text: "EXAMINATION",
                                isActive:
                                    toggleProvider.selectedTab == "EXAMINATION",
                                ontap: () {
                                  toggleProvider.setTab("EXAMINATION");
                                },
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: Consumer<TimeTableToggleProvider>(
                        builder: (context, toggleProvider, child) {
                          if (toggleProvider.selectedTab == "CLASSROOM") {
                            return SingleChildScrollView(
                              child: UpComingListTile(),
                            );
                          } else if (toggleProvider.selectedTab ==
                              "CONTINUOS ASSESSMENT") {
                            return SingleChildScrollView(
                              child: OnGoingListTile(),
                            );
                          } else if (toggleProvider.selectedTab ==
                              "EXAMINATION") {
                            return SingleChildScrollView(
                              child: PastEventListTile(),
                            );
                          }
                          return const SizedBox.shrink();
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
