import 'package:flutter/material.dart';
import 'package:okul_sistemi/pages/AnnouncementPage.dart';
import 'package:okul_sistemi/pages/CalendarPage.dart';
import 'package:okul_sistemi/pages/HomePage.dart';
import 'package:okul_sistemi/pages/LoginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Topkapı Üniversitesi',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
          useMaterial3: true,
        ),
        routes: {
          'LoginPage': (context) => const LoginPage(),
          'AnnouncementPage': (context) => const AnnouncementPage(),
          'CalendarPage': (context) => const CalendarPage(),
          // 'Campuses': (context) => const CampusesPage(),
          // 'RectorsMessage': (context) => const (),
          // 'Settings': (context) => const Settings(),
        },
        home: const HomePage());
  }
}
