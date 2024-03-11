// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:okul_sistemi/pages/LoginPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Topkapı Üniversitesi'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        backgroundColor: Colors.white,
        body: const LoginPage()); //* Değiştirilecek
  }
}
