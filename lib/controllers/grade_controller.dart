import '../models/grade_model.dart';
import '../utils/database_helper.dart';

class GradeController {
  // Grade ekleme işlemi
  static Future<void> addGrade(Grade grade) async {
    try {
      await DatabaseHelper.insertGrade(grade);
      print('Grade eklendi: ${grade.gradeValue}');
    } catch (e) {
      print('Grade eklenirken hata oluştu: $e');
    }
  }

  // Tüm notları getirme işlemi
  static Future<List<Grade>> getAllGrades() async {
    try {
      return await DatabaseHelper.getGrades();
    } catch (e) {
      print('Notlar getirilirken hata oluştu: $e');
      return [];
    }
  }
}
