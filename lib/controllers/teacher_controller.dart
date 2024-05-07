import 'package:okul_sistemi/utils/database_helper.dart';
import '../models/teacher_model.dart';

class TeacherController {
  // Öğretmen ekleme işlemi
  static Future<void> addTeacher(Teacher teacher) async {
    try {
      await DatabaseHelper.insertTeacher(teacher);
      print('Öğretmen eklendi: ${teacher.name} ${teacher.surname}');
    } catch (e) {
      print('Öğretmen eklenirken hata oluştu: $e');
    }
  }

  // Tüm öğretmenleri getirme işlemi
  static Future<List<Teacher>> getAllTeachers() async {
    try {
      return await DatabaseHelper.getTeachers();
    } catch (e) {
      print('Öğretmenler getirilirken hata oluştu: $e');
      return [];
    }
  }
}
