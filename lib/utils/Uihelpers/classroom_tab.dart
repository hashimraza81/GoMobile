import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../controller/days_provider.dart';
import '../constants/app_colors.dart';
import '../constants/app_textstyle.dart';
import '../listTiles/announcement_ListTile.dart';
import '../listTiles/continous_assessment_listTile.dart';

class ClassroomTab extends StatelessWidget {
  const ClassroomTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Consumer<DaysProvider>(
          builder: (context, daysProvider, child) {
            return Stack(
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildDayButton(
                          context, daysProvider, DaysType.mon, "Mon"),
                      _buildDayButton(
                          context, daysProvider, DaysType.tue, "Tue"),
                      _buildDayButton(
                          context, daysProvider, DaysType.wed, "Wed"),
                      _buildDayButton(
                          context, daysProvider, DaysType.thu, "Thu"),
                      _buildDayButton(
                          context, daysProvider, DaysType.fri, "Fri"),
                    ],
                  ),
                ),
                Positioned(
                  top: 10,
                  left: MediaQuery.of(context).size.width * 0.4,
                  child: Container(
                    color: AppColors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'DAYS OF THE WEEK',
                      style: rStyleBlack15600.copyWith(color: Colors.black),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
        const SizedBox(height: 10),
        Consumer<DaysProvider>(
          builder: (context, daysProvider, child) {
            Widget contentWidget = const SizedBox.shrink();

            // Display different widgets based on the selected day
            switch (daysProvider.selectedDayType) {
              case DaysType.mon:
                contentWidget = ContinousAssessmentListtile();
                break;
              case DaysType.tue:
                contentWidget = AnnouncementListTile();
                break;
              case DaysType.wed:
                // contentWidget = AnotherWidgetForWednesday();
                break;
              case DaysType.thu:
                // contentWidget = AnotherWidgetForThursday();
                break;
              case DaysType.fri:
                // contentWidget = AnotherWidgetForFriday();
                break;
              default:
                contentWidget = const SizedBox.shrink();
            }

            return Expanded(
              child: SingleChildScrollView(
                child: contentWidget,
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildDayButton(BuildContext context, DaysProvider provider,
      DaysType type, String label) {
    bool isSelected = provider.selectedDayType == type;
    return GestureDetector(
      onTap: () => provider.setDayType(type),
      child: Column(
        children: [
          Text(
            label,
            style: GoogleFonts.roboto(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: isSelected ? const Color(0xFFEB5757) : Colors.black,
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
    );
  }
}
