import 'package:flutter/widgets.dart';

enum DaysType { mon, tue, wed, thu, fri }

class DaysProvider with ChangeNotifier {
  DaysType _selectedDayType = DaysType.mon;

  DaysType get selectedDayType => _selectedDayType;

  void setDayType(DaysType type) {
    _selectedDayType = type;
    notifyListeners();
  }
}
