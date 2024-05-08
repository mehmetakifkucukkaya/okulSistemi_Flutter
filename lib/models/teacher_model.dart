class Teacher {
  final int teacherId;
  final String name;
  final String surname;
  final String email;
  final String password;

  Teacher({
    required this.teacherId,
    required this.name,
    required this.surname,
    required this.email,
    required this.password,
  });

  // Map'ten Teacher nesnesine dönüştürme metodu
  Map<String, dynamic> toMap() {
    return {
      'teacherId': teacherId,
      'name': name,
      'surname': surname,
      'email': email,
      'password': password,
    };
  }

  // Teacher nesnesini Map'e dönüştürme metodu
  factory Teacher.fromMap(Map<String, dynamic> map) {
    return Teacher(
      teacherId: map['teacherId'],
      name: map['name'],
      surname: map['surname'],
      email: map['email'],
      password: map['password'],
    );
  }
}
