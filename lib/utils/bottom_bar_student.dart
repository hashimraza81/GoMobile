import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gomobile/routes/routes_names.dart';
import 'package:gomobile/utils/constants/app_images.dart';
import 'package:provider/provider.dart';

import '../controller/bottom_Nav_Provider.dart';
import 'constants/app_colors.dart';
import 'constants/app_textstyle.dart';

class BottomBarStudent extends StatelessWidget {
  const BottomBarStudent({super.key});

  void _onTabSelected(BuildContext context, int index) {
    Provider.of<BottomNavProvider>(context, listen: false).setActiveTab(index);

    switch (index) {
      case 0:
        Navigator.pushNamed(context, RoutesName.studentMsg);
        break;
      case 1:
        Navigator.pushNamed(context, RoutesName.studentHome);
        break;
      case 2:
        Navigator.pushNamed(context, RoutesName.studentCalendar);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavProvider>(
      builder: (context, provider, child) {
        return SizedBox(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 10.0,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, -1),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () => _onTabSelected(context, 0),
                      child: SvgPicture.asset(
                        provider.activeTab == 0
                            ? AppImages.activenotification
                            : AppImages.inactivenotification,
                      ),
                    ),
                    const SizedBox(width: 60),
                    GestureDetector(
                      onTap: () => _onTabSelected(context, 2),
                      child: SvgPicture.asset(
                        provider.activeTab == 2
                            ? AppImages.activecalendar
                            : AppImages.inactivecalendar,
                      ),
                    ),
                  ],
                ),
              ),

              // Term Text Above the Bottom Bar
              Positioned(
                top: -39,
                left: 20,
                right: 20,
                child: Center(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: AppColors.orange,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      child: Center(
                        child: Text(
                          '1ST TERM - 2022/2023',
                          style: rStyleBlack12900.copyWith(
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // Center Circular Button (Home)
              Positioned(
                bottom: 10,
                left: MediaQuery.of(context).size.width / 2 - 30,
                child: GestureDetector(
                  onTap: () => _onTabSelected(context, 1),
                  child: SvgPicture.asset(
                    provider.activeTab == 1
                        ? AppImages.activemenu
                        : AppImages.inactivemenu,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
