import 'student_model.dart';

class Course {
  final String courseId;
  final String courseName;
  final String courseCode;
  final String teacherId;
  final List<Student> students;

  Course({
    required this.courseId,
    required this.courseName,
    required this.courseCode,
    required this.teacherId,
    required this.students,
  });

  // Map'ten Course nesnesine dönüştürme metodu
  Map<String, dynamic> toMap() {
    return {
      'courseId': courseId,
      'courseName': courseName,
      'courseCode': courseCode,
      'teacherId': teacherId,
      'students': students.map((student) => student.toMap()).toList(),
    };
  }

  // Course nesnesini Map'e dönüştürme metodu
  factory Course.fromMap(Map<String, dynamic> map) {
    return Course(
      courseId: map['courseId'],
      courseName: map['courseName'],
      courseCode: map['courseCode'],
      teacherId: map['teacherId'],
      students: List<Student>.from(
          map['students'].map((student) => Student.fromMap(student))),
    );
  }
}
