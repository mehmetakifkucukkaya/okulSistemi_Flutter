class Grade {
  final int gradeId;
  final int studentId;
  final int courseId;
  final int gradeValue;
  final String letterGrade;
  final String courseName; // Ders adı

  Grade({
    required this.gradeId,
    required this.studentId,
    required this.courseId,
    required this.gradeValue,
    required this.letterGrade,
    required this.courseName, // Ders adı
  });

  // Map'ten Grade nesnesine dönüştürme metodu
  Map<String, dynamic> toMap() {
    return {
      'gradeId': gradeId,
      'studentId': studentId,
      'courseId': courseId,
      'gradeValue': gradeValue,
      'letterGrade': letterGrade,
      'courseName': courseName, // Ders adı
    };
  }

  // Grade nesnesini Map'e dönüştürme metodu
  factory Grade.fromMap(Map<String, dynamic> map) {
    return Grade(
      gradeId: map['gradeId'],
      studentId: map['studentId'],
      courseId: map['courseId'],
      gradeValue: map['gradeValue'],
      letterGrade: map['letterGrade'],
      courseName: map['courseName'], // Ders adı
    );
  }
}
