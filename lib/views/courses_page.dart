import 'package:flutter/material.dart';
import '../models/course_model.dart';
import '../utils/database_helper.dart';

class CoursesPage extends StatefulWidget {
  const CoursesPage({super.key});

  @override
  _CoursesPageState createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  late Future<List<Course>> _coursesFuture;
  late Map<int, int> _studentCountMap;

  @override
  void initState() {
    super.initState();
    _coursesFuture = DatabaseHelper.getAllCourses();
    _loadStudentCounts();
  }

  Future<void> _loadStudentCounts() async {
    final studentCountMap =
        await DatabaseHelper.getStudentCountPerCourse();
    setState(() {
      _studentCountMap = studentCountMap;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dersler'),
      ),
      body: FutureBuilder<List<Course>>(
        future: _coursesFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Hata: ${snapshot.error}'));
          } else {
            final courses = snapshot.data ?? [];
            if (courses.isEmpty) {
              return const Center(child: Text('Henüz ders yok'));
            }
            return ListView.builder(
              itemCount: courses.length,
              itemBuilder: (context, index) {
                final course = courses[index];
                final studentCount =
                    _studentCountMap.containsKey(course.courseId)
                        ? _studentCountMap[course.courseId]
                        : 0;
                return ListTile(
                  title: Text(course.courseName),
                  subtitle: Text(course.courseCode),
                  trailing: Text('Öğrenci Sayısı: ${studentCount ?? 0}'),
                  onTap: () {
                    _showCourseDetails(context, course);
                  },
                );
              },
            );
          }
        },
      ),
    );
  }

  void _showCourseDetails(BuildContext context, Course course) {
    showDialog(
      context: context,
      builder: (context) {
        return FutureBuilder<List<Map<String, dynamic>>>(
          future: DatabaseHelper.getCourseStudents(course.courseId),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Hata: ${snapshot.error}'));
            } else {
              final students = snapshot.data ?? [];
              return AlertDialog(
                title: Text(course.courseName),
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Ders Kodu: ${course.courseCode}'),
                    Text('Öğretmen ID: ${course.teacherId}'),
                    const SizedBox(height: 10),
                    const Text(
                      'Katılan Öğrenciler:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: students.map((student) {
                        final studentName = student['studentName'];
                        final studentSurName = student['studentSurName'];
                        final studentId = student['studentId'];

                        return Text(
                          '${studentName ?? ''} $studentSurName (ID: $studentId)',
                        );
                      }).toList(),
                    ),
                  ],
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Kapat'),
                  ),
                ],
              );
            }
          },
        );
      },
    );
  }
}
