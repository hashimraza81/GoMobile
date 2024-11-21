import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gomobile/routes/routes_names.dart';
import 'package:gomobile/utils/constants/app_colors.dart';
import 'package:gomobile/utils/constants/app_images.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/Uihelpers/custom_text_field.dart';
import '../../utils/constants/app_textstyle.dart';

class StudentLoginView extends StatefulWidget {
  const StudentLoginView({super.key});

  @override
  State<StudentLoginView> createState() => _StudentLoginViewState();
}

class _StudentLoginViewState extends State<StudentLoginView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            // color: Colors.amberAccent,
            child: Stack(
              children: [
                // first
                SizedBox(
                  width: double.infinity,
                  child: SvgPicture.asset(
                    AppImages.vectorStudent,
                    fit: BoxFit.fitWidth,
                  ),
                ),

                // 2nd

                SizedBox(
                  width: double.infinity,
                  child: SvgPicture.asset(
                    AppImages.bgStudent,
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
                        backgroundColor: AppColors.parent_theme,
                        radius: 80,
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
                      color: AppColors.student_theme_2,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ToggleButton(text: "PARENTS/STUDENT", isActive: true),
                          ToggleButton(
                            text: "SCHOOL STAFF",
                            isActive: false,
                            ontap: () {
                              Navigator.pushNamed(
                                  context, RoutesName.staffLogin);
                            },
                          ),
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
                              color: AppColors.student_theme_2,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'ENTER YOUR CREDENTIALS',
                                style: rStyleBlack12900,
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
                            image: AppImages.pStudent,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: CustomTextField(
                            hintText: 'Password',
                            isPassword: true,
                            image: AppImages.lockstudent,
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
                    child: InkWell(
                      onTap: () => Navigator.pushNamed(
                          context, RoutesName.studentModule),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: AppColors.student_theme_2,
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
                            style: rStyleBlack25500,
                          ),
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
                          AppImages.ppStudent,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'Privacy Policy',
                            style: rStyleBlack20500,
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
                          Color(0xFFDB2E2E),
                          Color(0xFF530404),
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
                                context, RoutesName.studentRegistration);
                          },
                          child: Text(
                            'REGISTRATION',
                            style: rStyleBlack20500.copyWith(
                              color: AppColors.parent_theme,
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
                color: isActive
                    ? AppColors.student_theme_2
                    : AppColors.parent_theme,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
