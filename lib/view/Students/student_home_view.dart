import 'package:flutter/material.dart';
import 'package:gomobile/utils/constants/app_colors.dart';
import 'package:provider/provider.dart';

import '../../controller/toggle_provider.dart';
import '../../utils/Uihelpers/about_us_widget.dart';
import '../../utils/Uihelpers/custom_toggle_botton.dart';
import '../../utils/Uihelpers/staff_widegt.dart';
import '../../utils/bottomBar/bottom_bar_student.dart';
import '../../utils/constants/app_images.dart';

class StudentHomeView extends StatelessWidget {
  const StudentHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    'assets/Images/bg.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 285,
                  left: 110,
                  right: 70,
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.student_theme_2,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Consumer<ToggleProvider>(
                        builder: (context, toggleProvider, child) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ToggleButton(
                                text: "ABOUT US",
                                fontSize: 12,
                                isActive:
                                    toggleProvider.selectedTab == "ABOUT US",
                                ontap: () {
                                  toggleProvider.setTab("ABOUT US");
                                },
                              ),
                              ToggleButton(
                                text: "OUR STAFF",
                                fontSize: 12,
                                isActive:
                                    toggleProvider.selectedTab == "OUR STAFF",
                                ontap: () {
                                  toggleProvider.setTab("OUR STAFF");
                                },
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 230,
                        left: 10,
                      ),
                      child: CircleAvatar(
                        backgroundColor:
                            AppColors.parent_theme.withOpacity(0.6),
                        radius: 50,
                        child: ClipOval(
                          child: Image.asset(
                            AppImages.glogo,
                            fit: BoxFit.cover,
                            width: 90,
                            height: 90,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Consumer<ToggleProvider>(
                        builder: (context, toggleProvider, child) {
                          return toggleProvider.selectedTab == "ABOUT US"
                              ? const AboutUsWidget()
                              : const OurStaffWidget();
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const BottomBarStudent(),
      ),
    );
  }
}
