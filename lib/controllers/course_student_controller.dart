import '../utils/database_helper.dart';

class CourseStudentController {
  // Her ders için öğrenci sayısını getirme işlemi
  static Future<Map<int, int>> getStudentCountPerCourse() async {
    try {
      Map<int, int> countMap =
          await DatabaseHelper.getStudentCountPerCourse();
      return countMap;
    } catch (e) {
      print('Derslerin öğrenci sayıları getirilirken hata oluştu: $e');
      return {};
    }
  }
}
