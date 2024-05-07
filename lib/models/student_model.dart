class Student {
  int? studentId; // studentId artık null olabilir
  final String name;
  final String surName;
  final String imgUrl;
  final String studentNo;
  final String section;
  final String grade;
  final String email;
  final String password;

  Student({
    this.studentId, // studentId artık null olabilir
    required this.name,
    required this.surName,
    required this.imgUrl,
    required this.studentNo,
    required this.section,
    required this.grade,
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return {
      // studentId artık null olabilir, bu nedenle null kontrolü eklenmiştir
      if (studentId != null) 'studentId': studentId,
      'name': name,
      'surName': surName,
      'imgUrl': imgUrl,
      'studentNo': studentNo,
      'section': section,
      'grade': grade,
      'email': email,
      'password': password,
    };
  }

  // fromMap metodu eklenerek Map<String, dynamic> türündeki veriden Student nesnesi oluşturulabilir
  static Student fromMap(Map<String, dynamic> map) {
    return Student(
      studentId: map['studentId'],
      name: map['name'],
      surName: map['surName'],
      imgUrl: map['imgUrl'],
      studentNo: map['studentNo'],
      section: map['section'],
      grade: map['grade'],
      email: map['email'],
      password: map['password'],
    );
  }

  @override
  String toString() {
    return 'Student{studentId: $studentId, name: $name, surName: $surName, imgUrl: $imgUrl, studentNo: $studentNo, section: $section, grade: $grade, email: $email, password: $password}';
  }
}
