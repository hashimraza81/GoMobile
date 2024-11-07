import 'package:flutter/material.dart';
import 'package:gomobile/controller/message_toggle_provider.dart';
import 'package:gomobile/controller/staff_toggle_provider.dart';
import 'package:gomobile/controller/toggle_provider.dart';
import 'package:gomobile/routes/routes.dart';
import 'package:gomobile/routes/routes_names.dart';
import 'package:provider/provider.dart';

import 'controller/bottom_Nav_Provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomNavProvider()),
        ChangeNotifierProvider(create: (_) => ToggleProvider()),
        ChangeNotifierProvider(create: (_) => StaffToggleProvider()),
        ChangeNotifierProvider(create: (_) => MessageToggleProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'GOMOBILE',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: RoutesName.staffLogin,
        onGenerateRoute: Routes.generateRoute,
      ),
    );
  }
}