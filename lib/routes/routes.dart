import 'package:flutter/material.dart';
import 'package:gomobile/routes/routes_names.dart';
import 'package:gomobile/view/Staff/staff_login_view.dart';
import 'package:gomobile/view/Staff/staff_registration_view.dart';
import 'package:gomobile/view/Students/student_messages_view.dart';

import '../view/Students/student_calendar_view.dart';
import '../view/Students/student_home_view.dart';
import '../view/Students/student_login_view.dart';
import '../view/Students/student_registration_view.dart';

class Routes {
  static MaterialPageRoute generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.staffRegistration:
        return MaterialPageRoute(builder: (_) => const StaffRegistrationView());
      case RoutesName.staffLogin:
        return MaterialPageRoute(builder: (_) => const StaffLoginView());

      case RoutesName.studentRegistration:
        return MaterialPageRoute(
            builder: (_) => const StudentRegistrationView());
      case RoutesName.studentLogin:
        return MaterialPageRoute(builder: (_) => const StudentLoginView());

      case RoutesName.studentHome:
        return MaterialPageRoute(builder: (_) => const StudentHomeView());

      case RoutesName.studentMsg:
        return MaterialPageRoute(builder: (_) => const StudentMessagesView());

      case RoutesName.studentCalendar:
        return MaterialPageRoute(builder: (_) => const StudentCalendarView());
      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          );
        });
    }
  }
}
