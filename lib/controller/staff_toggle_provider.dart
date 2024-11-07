import 'package:flutter/material.dart';

class StaffToggleProvider with ChangeNotifier {
  String _selectedStaffType = "Academic Staff";

  String get selectedStaffType => _selectedStaffType;

  void setStaffType(String type) {
    _selectedStaffType = type;
    notifyListeners();
  }
}
