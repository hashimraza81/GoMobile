import 'package:flutter/material.dart';

class EventsToggleProvider with ChangeNotifier {
  String _selectedTab = "CLASSROOM";

  String get selectedTab => _selectedTab;

  void setTab(String tab) {
    _selectedTab = tab;
    notifyListeners();
  }
}
