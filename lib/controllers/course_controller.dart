import '../models/course_model.dart';
import '../utils/database_helper.dart';

class CourseController {
  // Kurs ekleme işlemi
  static Future<void> addCourse(Course course) async {
    try {
      await DatabaseHelper.insertCourse(course);
      print('Kurs eklendi: ${course.courseName}');
    } catch (e) {
      print('Kurs eklenirken hata oluştu: $e');
    }
  }

  // Tüm kursları getirme işlemi
  static Future<List<Course>> getAllCourses() async {
    try {
      List<Course> courses = await DatabaseHelper.getAllCourses();
      return courses;
    } catch (e) {
      print('Kurslar getirilirken hata oluştu: $e');
      return [];
    }
  }
}
