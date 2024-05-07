import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../models/course_model.dart';
import '../models/grade_model.dart';
import '../models/student_model.dart';
import '../models/teacher_model.dart';
import '../models/weekly_schedule_model.dart';

class DatabaseHelper {
  static Database? _database;
  static const String _dbName = 'university.db';

  // Database açma işlemi
  static Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDatabase();
    return _database!;
  }

  // Veritabanını başlatma işlemi
  static Future<Database> initDatabase() async {
    final path = await getDatabasesPath();
    final databasePath = join(path, _dbName);
    return await openDatabase(databasePath,
        version: 1, onCreate: _createTable);
  }

  // Tablo oluşturma işlemi
  static Future<void> _createTable(Database db, int version) async {
    await db.execute('''
    CREATE TABLE students(
      studentId INTEGER PRIMARY KEY,
      name TEXT,
      surName TEXT,
      imgUrl TEXT,
      studentNo TEXT,
      section TEXT,
      grade TEXT,
      email TEXT,
      password TEXT
    )
  ''');

    await db.execute('''
    CREATE TABLE teachers(
      teacherId INTEGER PRIMARY KEY,
      name TEXT,
      surname TEXT,
      email TEXT,
      password TEXT
    )
  ''');

    await db.execute('''
    CREATE TABLE courses(
      courseId INTEGER PRIMARY KEY,
      courseName TEXT,
      courseCode TEXT,
      teacherId INTEGER,
      FOREIGN KEY (teacherId) REFERENCES teachers(teacherId)
    )
  ''');

    await db.execute('''
    CREATE TABLE grades(
      gradeId INTEGER PRIMARY KEY,
      studentId INTEGER,
      courseId INTEGER,
      gradeValue TEXT,
      FOREIGN KEY (studentId) REFERENCES students(studentId),
      FOREIGN KEY (courseId) REFERENCES courses(courseId)
    )
  ''');

    // Dersi alan öğrencilerin listesini tutan tablo
    await db.execute('''
    CREATE TABLE course_students(
      courseId INTEGER,
      studentId INTEGER,
      FOREIGN KEY (courseId) REFERENCES courses(courseId),
      FOREIGN KEY (studentId) REFERENCES students(studentId)
    )
  ''');

    await db.execute('''
    CREATE TABLE weekly_schedules(
      scheduleId INTEGER PRIMARY KEY,
      courseId INTEGER,
      classroom TEXT,
      day TEXT,
      time TEXT,
      FOREIGN KEY (courseId) REFERENCES courses(courseId)
    )
  ''');
  }

  //* STUDENTS
  // Öğrenci ekleme işlemi
  static Future<int> insertStudent(Student student) async {
    final db = await database;
    return await db.insert("students", student.toMap());
  }

  // Öğrenci listesi getirme işlemi
  static Future<List<Student>> getStudents() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query("students");
    return List.generate(maps.length, (i) {
      return Student(
        studentId: maps[i]['studentId'],
        name: maps[i]['name'],
        surName: maps[i]['surName'],
        imgUrl: maps[i]['imgUrl'],
        studentNo: maps[i]['studentNo'],
        section: maps[i]['section'],
        grade: maps[i]['grade'],
        email: maps[i]['email'],
        password: maps[i]['password'],
      );
    });
  }

  // Öğrenci güncelleme işlemi
  static Future<int> updateStudent(Student student) async {
    final db = await database;
    return await db.update(
      "students",
      student.toMap(),
      where: 'studentId = ?',
      whereArgs: [student.studentId],
    );
  }

  // Öğrenci silme işlemi
  static Future<int> deleteStudent(String studentId) async {
    final db = await database;
    return await db.delete(
      "students",
      where: 'studentId = ?',
      whereArgs: [studentId],
    );
  }

  //* COURSES

  // Kurs ekleme işlemi
  static Future<int> insertCourse(Course course) async {
    final db = await database;
    return await db.insert("courses", course.toMap());
  }

  // Tüm kursları getirme işlemi
  static Future<List<Course>> getAllCourses() async {
    final db = await database;
    final List<Map<String, dynamic>> courseMaps =
        await db.query("courses");
    List<Course> courses = [];
    for (var courseMap in courseMaps) {
      Course course = Course(
        courseId: courseMap['courseId'],
        courseName: courseMap['courseName'],
        courseCode: courseMap['courseCode'],
        teacherId: courseMap['teacherId'],
        students: [], // Öğrenci listesi boş olarak başlatılıyor
      );
      courses.add(course);
    }
    return courses;
  }

  //* TEACHERS

  // Öğretmen ekleme işlemi
  static Future<int> insertTeacher(Teacher teacher) async {
    final db = await database;
    return await db.insert("teachers", teacher.toMap());
  }

  static Future<List<Teacher>> getTeachers() async {
    final db = await database;
    final List<Map<String, dynamic>> teacherMaps =
        await db.query("teachers");
    return List.generate(teacherMaps.length, (i) {
      return Teacher(
        teacherId: teacherMaps[i]['teacherId'],
        name: teacherMaps[i]['name'],
        surname: teacherMaps[i]['surname'],
        email: teacherMaps[i]['email'],
        password: teacherMaps[i]['password'],
      );
    });
  }

  //* GRADES

  // Grade ekleme işlemi
  static Future<int> insertGrade(Grade grade) async {
    final db = await database;
    return await db.insert("grades", grade.toMap());
  }

  // Tüm notları getirme işlemi
  static Future<List<Grade>> getGrades() async {
    final db = await database;
    final List<Map<String, dynamic>> gradeMaps = await db.query("grades");
    return List.generate(gradeMaps.length, (i) {
      return Grade(
        gradeId: gradeMaps[i]['gradeId'],
        studentId: gradeMaps[i]['studentId'],
        courseId: gradeMaps[i]['courseId'],
        gradeValue: gradeMaps[i]['gradeValue'],
      );
    });
  }

//* WEEKLY SCHEDULE

// WeeklySchedule ekleme işlemi
  static Future<int> insertWeeklySchedule(WeeklySchedule schedule) async {
    final db = await database;
    return await db.insert("weekly_schedules", schedule.toMap());
  }

  // Tüm haftalık programları getirme işlemi
  static Future<List<WeeklySchedule>> getWeeklySchedules() async {
    final db = await database;
    final List<Map<String, dynamic>> scheduleMaps =
        await db.query("weekly_schedules");
    return List.generate(scheduleMaps.length, (i) {
      return WeeklySchedule(
        scheduleId: scheduleMaps[i]['scheduleId'],
        courseId: scheduleMaps[i]['courseId'],
        classroom: scheduleMaps[i]['classroom'],
        day: scheduleMaps[i]['day'],
        time: scheduleMaps[i]['time'],
      );
    });
  }
}
