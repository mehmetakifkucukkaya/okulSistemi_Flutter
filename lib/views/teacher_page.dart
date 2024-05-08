import 'package:flutter/material.dart';

import '../models/teacher_model.dart'; 
import '../utils/database_helper.dart';

class TeachersPage extends StatefulWidget {
  const TeachersPage({super.key});

  @override
  _TeachersPageState createState() => _TeachersPageState();
}

class _TeachersPageState extends State<TeachersPage> {
  late Future<List<Teacher>> _teachersFuture;

  @override
  void initState() {
    super.initState();
    _teachersFuture = DatabaseHelper.getTeachers(); // Öğretmenleri getiren metodu çağırın
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Öğretmenler'),
      ),
      body: FutureBuilder<List<Teacher>>(
        future: _teachersFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Hata: ${snapshot.error}'));
          } else {
            final teachers = snapshot.data ?? [];
            if (teachers.isEmpty) {
              return const Center(child: Text('Henüz öğretmen yok'));
            }
            return ListView.builder(
              itemCount: teachers.length,
              itemBuilder: (context, index) {
                final teacher = teachers[index];
                return ListTile(
                  title: Text('${teacher.name} ${teacher.surname}'),
                  subtitle: Text('Öğretmen ID: ${teacher.teacherId}'),
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Öğretmen ekleme sayfasına yönlendirme işlemi
          Navigator.pushNamed(context, 'AddTeacherPage');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
