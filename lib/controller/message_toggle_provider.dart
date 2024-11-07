import 'package:flutter/material.dart';

enum MessageType { announcement, homework, attendance }

enum AttendanceType { classAttendance, schoolAttendance }

class MessageToggleProvider with ChangeNotifier {
  MessageType _selectedType = MessageType.announcement;
  AttendanceType _selectedAttendanceType = AttendanceType.classAttendance;

  MessageType get selectedType => _selectedType;
  AttendanceType get selectedAttendanceType => _selectedAttendanceType;

  void setType(MessageType type) {
    _selectedType = type;
    notifyListeners();
  }

  void setAttendanceType(AttendanceType type) {
    _selectedAttendanceType = type;
    notifyListeners();
  }
}
