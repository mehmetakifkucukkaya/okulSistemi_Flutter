import 'package:okul_sistemi/utils/database_helper.dart';

import '../models/student_model.dart';

class StudentController {
  // Öğrenci ekleme işlemi
  static Future<int> addStudent(Student student) async {
    return await DatabaseHelper.insertStudent(student);
  }

  // Öğrenci listesi getirme işlemi
  static Future<List<Student>> getStudents() async {
    return await DatabaseHelper.getStudents();
  }

  // Öğrenci güncelleme işlemi
  static Future<int> updateStudent(Student student) async {
    return await DatabaseHelper.updateStudent(student);
  }

  // Öğrenci silme işlemi
  static Future<int> deleteStudent(String studentId) async {
    return await DatabaseHelper.deleteStudent(studentId);
  }
}
