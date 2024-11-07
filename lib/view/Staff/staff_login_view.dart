import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gomobile/routes/routes_names.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/constants/app_colors.dart';
import '../../utils/constants/app_images.dart';
import '../../utils/constants/app_textstyle.dart';
import '../../utils/custom_text_field.dart';

class StaffLoginView extends StatelessWidget {
  const StaffLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Stack(
              children: [
                // first
                SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    AppImages.vectorStaff,
                    fit: BoxFit.fitWidth,
                  ),
                ),

                // 2nd

                SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    AppImages.bgStaff,
                    fit: BoxFit.cover,
                  ),
                ),

                // 3rd

                Positioned(
                  top: 35,
                  left: 10,
                  right: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 80,
                        backgroundColor: AppColors.major4,
                        child: ClipOval(
                          child: Image.asset(
                            AppImages.glogo,
                            fit: BoxFit.cover,
                            width: 150,
                            height: 150,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'GSIMS',
                        style: rStyleBlack50100,
                      ),
                    ],
                  ),
                ),

                // 4th

                Positioned(
                  top: 275,
                  left: 20,
                  right: 20,
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.major1,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ToggleButton(
                            text: "PARENTS/STUDENT",
                            isActive: false,
                            ontap: () {
                              Navigator.pushNamed(
                                  context, RoutesName.studentLogin);
                            },
                          ),
                          ToggleButton(text: "SCHOOL STAFF", isActive: true),
                        ],
                      ),
                    ),
                  ),
                ),

                // 5th

                Positioned(
                  left: 20,
                  right: 20,
                  top: 345,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                            decoration: const BoxDecoration(
                              color: AppColors.major1,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'ENTER YOUR CREDENTIALS',
                                style: rStyleBlack12900.copyWith(
                                  color: AppColors.major3,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: CustomTextField(
                            hintText: 'Username',
                            image: AppImages.personStaff,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: CustomTextField(
                            hintText: 'Password',
                            isPassword: true,
                            image: AppImages.lockStaff,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // 6th

                Positioned(
                  left: 60,
                  right: 60,
                  top: 490,
                  child: Center(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: AppColors.major1,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 60,
                          vertical: 12,
                        ),
                        child: Text(
                          'Login',
                          style: rStyleBlack25500.copyWith(
                              color: AppColors.major2),
                        ),
                      ),
                    ),
                  ),
                ),

                // 7th

                Positioned(
                  left: 20,
                  right: 20,
                  top: 565,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          AppImages.ppStaff,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'Privacy Policy',
                            style: rStyleBlack20500.copyWith(
                              color: const Color(0xFF962821),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //8th

                Positioned(
                  bottom: 0,
                  left: 30,
                  right: 30,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF2E88DB),
                          Color(0xFF042D53),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 66,
                          vertical: 26,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              RoutesName.staffRegistration,
                            );
                          },
                          child: Text(
                            'REGISTRATION',
                            style: rStyleBlack20500.copyWith(
                              color: AppColors.major2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ToggleButton extends StatelessWidget {
  final String text;
  final bool isActive;
  GestureTapCallback? ontap;

  ToggleButton(
      {super.key, required this.text, required this.isActive, this.ontap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: isActive ? Colors.white : Colors.transparent,
          borderRadius: isActive ? BorderRadius.circular(20) : null,
        ),
        child: InkWell(
          onTap: ontap,
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: isActive ? AppColors.major1 : AppColors.major2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
