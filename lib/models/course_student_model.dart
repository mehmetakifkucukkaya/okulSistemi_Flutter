class CourseStudent {
  final int id;
  final int courseId;
  final int studentId;

  CourseStudent(
      {required this.id, required this.courseId, required this.studentId});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'courseId': courseId,
      'studentId': studentId,
    };
  }

  factory CourseStudent.fromMap(Map<String, dynamic> map) {
    return CourseStudent(
      id: map['id'],
      courseId: map['courseId'],
      studentId: map['studentId'],
    );
  }
}
