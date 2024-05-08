import 'package:flutter/material.dart';
import '../models/student_model.dart';
import '../utils/database_helper.dart';


//* DB KONTROLÜ YAPILMAK İÇİN OLUŞTURUDLU -> SAYFA TASARIMI DEĞİŞECEK

class StudentsPage extends StatefulWidget {
  const StudentsPage({super.key});

  @override
  _StudentsPageState createState() => _StudentsPageState();
}

class _StudentsPageState extends State<StudentsPage> {
  late Future<List<Student>> _studentsFuture;

  @override
  void initState() {
    super.initState();
    _studentsFuture = DatabaseHelper.getStudents();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Öğrenciler'),
      ),
      body: FutureBuilder<List<Student>>(
        future: _studentsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Hata: ${snapshot.error}'));
          } else {
            final students = snapshot.data ?? [];
            if (students.isEmpty) {
              return const Center(child: Text('Henüz öğrenci yok'));
            }
            return ListView.builder(
              itemCount: students.length,
              itemBuilder: (context, index) {
                final student = students[index];
                return ListTile(
                  title: Text('${student.name} ${student.surName}'),
                  subtitle: Text('Öğrenci No: ${student.studentNo}'),
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'AddStudentPage');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
