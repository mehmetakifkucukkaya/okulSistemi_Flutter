class Grade {
  final String gradeId;
  final String studentId;
  final String courseId;
  final String gradeValue;

  Grade({
    required this.gradeId,
    required this.studentId,
    required this.courseId,
    required this.gradeValue,
  });

  // Map'ten Grade nesnesine dönüştürme metodu
  Map<String, dynamic> toMap() {
    return {
      'gradeId': gradeId,
      'studentId': studentId,
      'courseId': courseId,
      'gradeValue': gradeValue,
    };
  }

  // Grade nesnesini Map'e dönüştürme metodu
  factory Grade.fromMap(Map<String, dynamic> map) {
    return Grade(
      gradeId: map['gradeId'],
      studentId: map['studentId'],
      courseId: map['courseId'],
      gradeValue: map['gradeValue'],
    );
  }
}
