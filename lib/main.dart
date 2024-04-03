import 'package:flutter/material.dart';
import 'package:okul_sistemi/pages/AnnouncementPage.dart';
import 'package:okul_sistemi/pages/CalendarPage.dart';
import 'package:okul_sistemi/pages/CampusesPage.dart';
import 'package:okul_sistemi/pages/HomePage.dart';
import 'package:okul_sistemi/pages/SplashPage.dart';
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
        '/': (context) => const SplashPage(),
        'LoginPage': (context) => const LoginPage(),
        'AnnouncementPage': (context) => const AnnouncementPage(),
        'CalendarPage': (context) => const CalendarPage(),
        'CampusesPage': (context) => const CampusesPage(),
        'HomePage': (context) => const HomePage(),
        // 'RectorsMessage': (context) => const (),
        // 'Settings': (context) => const Settings(),
      },
    );
  }
}
