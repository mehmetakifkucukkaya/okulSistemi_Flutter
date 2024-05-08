import 'package:flutter/material.dart';
import 'package:okul_sistemi/views/AddStudentPage.dart';
import 'package:okul_sistemi/views/AnnouncementPage.dart';
import 'package:okul_sistemi/views/CalendarPage.dart';
import 'package:okul_sistemi/views/CampusesPage.dart';
import 'package:okul_sistemi/views/HomePage.dart';
import 'package:okul_sistemi/views/LoginPage.dart';

import 'utils/database_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DatabaseHelper.initDatabase(); // Veritabanını başlat
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
        // '/': (context) => const SplashPage(),
        '/': (context) => const CampusesPage(),
        'LoginPage': (context) => const LoginPage(),
        'AnnouncementPage': (context) => const AnnouncementPage(),
        'CalendarPage': (context) => const CalendarPage(),
        'CampusesPage': (context) => const CampusesPage(),
        'HomePage': (context) => const HomePage(),
        'AddStudentPage': (context) => const AddStudentPage(),

        // 'RectorsMessage': (context) => const (),
        // 'Settings': (context) => const Settings(),
      },
    );
  }
}
