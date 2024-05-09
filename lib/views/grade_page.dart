import 'package:flutter/material.dart';

import '../controllers/grade_controller.dart';
import '../models/grade_model.dart'; // Controller ekledik

class GradePage extends StatelessWidget {
  final int studentId;

  const GradePage({super.key, required this.studentId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text("Notlarım"),
      ),
      body: FutureBuilder<List<Grade>>(
        future: GradeController.getGradesByStudentId(studentId),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Hata: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            final List<Grade> grades = snapshot.data!;
            return ListView.builder(
              itemCount: grades.length,
              itemBuilder: (context, index) {
                final grade = grades[index];
                return Card(
                  child: ListTile(
                    title: Text(grade.courseName),
                    subtitle: Text("Not: ${grade.gradeValue}"),
                    trailing: Text("Harf Notu: ${grade.letterGrade}"),
                  ),
                );
              },
            );
          } else {
            // Veri yoksa gösterilecek widget
            return const Center(child: Text('Veri bulunamadı.'));
          }
        },
      ),
    );
  }
}
