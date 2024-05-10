import 'package:flutter/material.dart';
import 'package:okul_sistemi/views/announcement_page.dart';
import 'package:okul_sistemi/views/calendar_page.dart';
import 'package:okul_sistemi/views/campuses_page.dart';
import 'package:okul_sistemi/views/grade_page.dart';
import 'package:okul_sistemi/views/home_page.dart';
import 'package:okul_sistemi/views/login_page.dart';

import 'utils/database_helper.dart';
import 'views/rectors_message_page.dart';

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
        '/': (context) => const LoginPage(),
        // '/': (context) => const GradePage(
        //       studentId: 2,
        //     ),
        'LoginPage': (context) => const LoginPage(),
        'HomePage': (context) => const HomePage(),
        'AnnouncementPage': (context) => const AnnouncementPage(),
        'CalendarPage': (context) => const CalendarPage(),
        'CampusesPage': (context) => const CampusesPage(),
        'GradePage': (context) => const GradePage(
              studentId: 1,
            ),
        'RectorsMessage': (context) => const RectorsMessage()
        // 'Settings': (context) => const Settings(),
      },
    );
  }
}
