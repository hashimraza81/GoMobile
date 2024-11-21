import 'package:flutter/material.dart';

class CalendarState extends ChangeNotifier {
  DateTime _focusedDay = DateTime.utc(2024, 11, 1);
  DateTime? _selectedDay;

  DateTime get focusedDay => _focusedDay;
  DateTime? get selectedDay => _selectedDay;

  void updateFocusedDay(DateTime day) {
    _focusedDay = day;
    notifyListeners();
  }

  void updateSelectedDay(DateTime? day) {
    _selectedDay = day;
    notifyListeners();
  }
}
