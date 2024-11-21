import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gomobile/utils/constants/app_images.dart';
import 'package:gomobile/utils/constants/app_textstyle.dart';

import '../../routes/routes_names.dart';
import '../../utils/bottomBar/bottom_bar_student.dart';
import '../../utils/constants/app_colors.dart';

class StudentSchoolModulesView extends StatelessWidget {
  StudentSchoolModulesView({super.key});

  final List<Map<String, String>> gridItems = [
    {'imagePath': AppImages.events, 'title': 'EVENTS'},
    {'imagePath': AppImages.timetable, 'title': 'TIMETABLE'},
    {'imagePath': AppImages.ourSchool, 'title': 'OUR SCHOOL'},
    {'imagePath': AppImages.schoolBus, 'title': 'SCHOOL BUS'},
    {'imagePath': AppImages.multimedia, 'title': 'MULTIMEDIA'},
    {'imagePath': AppImages.absentNote, 'title': 'ABSENT NOTE'},
    {'imagePath': AppImages.repo, 'title': 'REPOSITORY'},
    {'imagePath': AppImages.studentProfile, 'title': 'PROFILE'},
    {'imagePath': AppImages.medicChat, 'title': 'MEDIC CHAT'},
    {'imagePath': AppImages.support, 'title': 'CUSTOMER'},
    {'imagePath': AppImages.dailyComm, 'title': 'DAILY COMM'},
    {'imagePath': AppImages.reportCard, 'title': 'REPORT CARD'},
    {'imagePath': AppImages.feesPayment, 'title': 'FEES PAYMENT'},
    {'imagePath': AppImages.wallet, 'title': 'WALLET'},
    {'imagePath': AppImages.parentLogoutButton, 'title': 'LOGOUT'},
    {'imagePath': AppImages.gsimslogo, 'title': 'GSIMS'},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  'assets/Images/schoolModule.png',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          backgroundColor:
                              const Color(0xFFD9D9D9).withOpacity(0.6),
                          radius: 55,
                          child: Image.asset(
                            AppImages.vector,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const ProfileTag(text: 'CPS1029/20203'),
                            const ProfileTag(text: 'COMMERCIAL/SOCIAL SCIENCE'),
                            const ProfileTag(text: 'SSS 3 - APPLE'),
                            const ProfileTag(text: 'BOARDING SCHOOL'),
                            const SizedBox(height: 4),
                            Text(
                              'BABATUNDE OluwaseunIdowu',
                              style: rStyleBlack13900.copyWith(
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Bajuwatheoremni',
                              style: rStyleBlack13900.copyWith(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () => Navigator.pushNamed(
                            context,
                            RoutesName.studentHome,
                          ),
                          child: SvgPicture.asset(
                            AppImages.setting,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8,
                            childAspectRatio: 0.8,
                          ),
                          itemCount: gridItems.length,
                          itemBuilder: (context, index) {
                            final item = gridItems[index];
                            return GridItem(
                              onTap: () {
                                _handleGridItemTap(
                                    context, item['title'] ?? '');
                              },
                              imagePath: item['imagePath'] ?? '',
                              title: item['title'] ?? '',
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: const BottomBarStudent(),
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final VoidCallback? onTap;

  const GridItem({
    super.key,
    required this.imagePath,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: rStyleBlack10600.copyWith(color: Colors.black),
            textAlign: TextAlign.center,
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color(0xFFEB5757),
                  Color(0xFFF2994A),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset(
              imagePath,
              height: 50,
              width: 50,
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileTag extends StatelessWidget {
  final String text;

  const ProfileTag({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      decoration: BoxDecoration(
        color: const Color(0xFF4F4F4F),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        text,
        style: rStyleBlack10500.copyWith(
          color: AppColors.white,
        ),
      ),
    );
  }
}

void _handleGridItemTap(BuildContext context, String title) {
  switch (title) {
    case 'EVENTS':
      Navigator.pushNamed(context, RoutesName.studentEvents);
      break;
    case 'TIMETABLE':
      Navigator.pushNamed(context, RoutesName.studentTimeTable);
      break;
    // case 'OUR SCHOOL':
    //   Navigator.pushNamed(context, RoutesName.ourSchoolScreen);
    //   break;
    case 'SCHOOL BUS':
      Navigator.pushNamed(context, RoutesName.studentBus);
    //   break;
    // case 'MULTIMEDIA':
    //   Navigator.pushNamed(context, RoutesName.multimediaScreen);
    //   break;
    case 'ABSENT NOTE':
      Navigator.pushNamed(context, RoutesName.studentAbsentNote);
    // case 'REPOSITORY':
    //   Navigator.pushNamed(context, RoutesName.repositoryScreen);
    //   break;
    // case 'PROFILE':
    //   Navigator.pushNamed(context, RoutesName.profileScreen);
    //   break;
    // case 'MEDIC CHAT':
    //   Navigator.pushNamed(context, RoutesName.medicChatScreen);
    //   break;
    // case 'CUSTOMER':
    //   Navigator.pushNamed(context, RoutesName.customerSupportScreen);
    //   break;
    // case 'DAILY COMM':
    //   Navigator.pushNamed(context, RoutesName.dailyCommScreen);
    //   break;
    // case 'REPORT CARD':
    //   Navigator.pushNamed(context, RoutesName.reportCardScreen);
    //   break;
    // case 'FEES PAYMENT':
    //   Navigator.pushNamed(context, RoutesName.feesPaymentScreen);
    //   break;
    // case 'WALLET':
    //   Navigator.pushNamed(context, RoutesName.walletScreen);
    //   break;
    // case 'LOGOUT':
    //   Navigator.pushNamed(context, RoutesName.logoutScreen);
    //   break;
    // case 'GSIMS':
    //   Navigator.pushNamed(context, RoutesName.gsimsScreen);
    //   break;
    default:
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('$title clicked')),
      );
      break;
  }
}
