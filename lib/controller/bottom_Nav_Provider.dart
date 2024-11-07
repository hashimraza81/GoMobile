import 'package:flutter/material.dart';

class BottomNavProvider with ChangeNotifier {
  int _activeTab = 0;

  int get activeTab => _activeTab;

  void setActiveTab(int index) {
    _activeTab = index;
    notifyListeners();
  }
}
