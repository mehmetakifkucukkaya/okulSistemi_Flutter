import 'package:flutter/material.dart';
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
        },
        home: const HomePage());
  }
}
