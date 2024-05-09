// ignore_for_file: library_private_types_in_public_api, use_build_context_synchronously

import 'package:flutter/material.dart';

import '../models/student_model.dart';
import '../utils/database_helper.dart';

class AddStudentPage extends StatefulWidget {
  const AddStudentPage({super.key});

  @override
  _AddStudentPageState createState() => _AddStudentPageState();
}

//* DB KONTROLÜ YAPILMAK İÇİN OLUŞTURUDLU -> SAYFA TASARIMI DEĞİŞECEK

class _AddStudentPageState extends State<AddStudentPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _surnameController = TextEditingController();
  final TextEditingController _studentNoController =
      TextEditingController();
  final TextEditingController _sectionController = TextEditingController();
  final TextEditingController _gradeController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Öğrenci Ekle'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Ad'),
              ),
              TextField(
                controller: _surnameController,
                decoration: const InputDecoration(labelText: 'Soyad'),
              ),
              TextField(
                controller: _studentNoController,
                decoration: const InputDecoration(labelText: 'Öğrenci No'),
              ),
              TextField(
                controller: _sectionController,
                decoration: const InputDecoration(labelText: 'Bölüm'),
              ),
              TextField(
                controller: _gradeController,
                decoration: const InputDecoration(labelText: 'Sınıf'),
              ),
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'E-posta'),
              ),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(labelText: 'Şifre'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  _addStudent();
                },
                child: const Text('Ekle'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _addStudent() async {
    final student = Student(
      name: _nameController.text,
      surName: _surnameController.text,
      imgUrl: '', // Url eklemek isterseniz buraya ekleyin
      studentNo: _studentNoController.text,
      section: _sectionController.text,
      grade: _gradeController.text,
      email: _emailController.text,
      password: _passwordController.text,
    );

    await DatabaseHelper.insertStudent(student);

    // Öğrenci eklendikten sonra bir geri dönüş yapabilirsiniz.
    Navigator.pop(context);
  }
}
