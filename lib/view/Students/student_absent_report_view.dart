import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gomobile/utils/constants/app_textstyle.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/bottomBar/bottom_bar_student.dart';
import '../../utils/constants/app_images.dart';
import '../../utils/listTiles/driver_listTile.dart';

class StudentAbsentReportView extends StatelessWidget {
  const StudentAbsentReportView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const BottomBarStudent(),
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/Images/eventsbg.png',
                fit: BoxFit.cover,
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Image.asset(
                          AppImages.eventsHeader,
                          fit: BoxFit.cover,
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
                                    'ABSENT NOTE',
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
                            Text(
                              "      This section offers parents concise, detailed updates on\n school events, encompassing timings, venues, and essential details, ensuring they are informed and prepared for their children's participation.",
                              style: GoogleFonts.roboto(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.end,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: screenHeight * 0.15,
                        left: screenWidth * 0.05,
                        child: SvgPicture.asset(AppImages.absent1),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            height: 2,
                            color: Colors.red,
                            margin: const EdgeInsets.only(right: 8),
                          ),
                        ),
                        SvgPicture.asset(
                          AppImages.add,
                          width: 40,
                          height: 40,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DriverListTile(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
