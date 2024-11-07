import 'package:flutter/material.dart';

class ToggleProvider with ChangeNotifier {
  String _selectedTab = "ABOUT US";

  String get selectedTab => _selectedTab;

  void setTab(String tab) {
    _selectedTab = tab;
    notifyListeners();
  }
}
