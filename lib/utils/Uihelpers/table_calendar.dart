import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../controller/calendar_provider.dart';

class CustomCalendar extends StatelessWidget {
  const CustomCalendar({super.key});

  @override
  Widget build(BuildContext context) {
    final calendarState = Provider.of<CalendarState>(context);

    return Column(
      children: [
        // Custom Header
        _buildCustomHeader(context, calendarState),
        const SizedBox(height: 10),
        // Calendar
        TableCalendar(
          firstDay: DateTime.utc(2020, 1, 1),
          lastDay: DateTime.utc(2030, 12, 31),
          focusedDay: calendarState.focusedDay,
          selectedDayPredicate: (day) {
            return isSameDay(calendarState.selectedDay, day);
          },
          onDaySelected: (selectedDay, focusedDay) {
            calendarState.updateSelectedDay(selectedDay);
            calendarState.updateFocusedDay(focusedDay);
          },
          calendarStyle: const CalendarStyle(
            todayDecoration: BoxDecoration(
              color: Color(0xFFF2C94C),
              shape: BoxShape.circle,
            ),
            selectedDecoration: BoxDecoration(
              color: Colors.yellow,
              shape: BoxShape.circle,
            ),
            markersMaxCount: 3,
            markerDecoration: BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
            ),
            defaultTextStyle: TextStyle(
              color: Colors.black,
            ),
            weekendTextStyle: TextStyle(
              color: Colors.black,
            ),
            todayTextStyle: TextStyle(
              color: Colors.white,
            ),
            selectedTextStyle: TextStyle(
              color: Colors.black,
            ),
            outsideTextStyle: TextStyle(
              color: Color(0xFFFFBC81),
            ),
          ),
          daysOfWeekStyle: const DaysOfWeekStyle(
            weekdayStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            weekendStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          headerVisible: false,
        ),
      ],
    );
  }

  Widget _buildCustomHeader(BuildContext context, CalendarState calendarState) {
    return Column(
      children: [
        // Year
        Text(
          "${calendarState.focusedDay.year}",
          style: GoogleFonts.roboto(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Left Arrow
            IconButton(
              icon: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  color: const Color(0xFFF2C94C),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.white, width: 1.0),
                ),
                child: const Icon(Icons.chevron_left,
                    color: Colors.white, size: 20),
              ),
              onPressed: () {
                calendarState.updateFocusedDay(
                  DateTime(
                    calendarState.focusedDay.year,
                    calendarState.focusedDay.month - 1,
                    1,
                  ),
                );
              },
            ),

            // Month Display
            Container(
              padding: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                color: const Color(0xFFE2A736),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                _getMonthName(calendarState.focusedDay.month),
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            // Right Arrow
            IconButton(
              icon: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  color: const Color(0xFFF2C94C),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.white, width: 1.0),
                ),
                child: const Icon(Icons.chevron_right,
                    color: Colors.white, size: 20),
              ),
              onPressed: () {
                calendarState.updateFocusedDay(
                  DateTime(
                    calendarState.focusedDay.year,
                    calendarState.focusedDay.month + 1,
                    1,
                  ),
                );
              },
            ),
          ],
        ),
      ],
    );
  }

  /// Helper for Month Names
  String _getMonthName(int month) {
    const months = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December'
    ];
    return months[month - 1];
  }
}
