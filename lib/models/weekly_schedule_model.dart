class WeeklySchedule {
  final String scheduleId;
  final String courseId;
  final String classroom;
  final String day;
  final String time;

  WeeklySchedule({
    required this.scheduleId,
    required this.courseId,
    required this.day,
    required this.time,
    required this.classroom,
  });

  Map<String, dynamic> toMap() {
    return {
      'scheduleId': scheduleId,
      'courseId': courseId,
      'classroom': classroom,
      'day': day,
      'time': time,
    };
  }

  factory WeeklySchedule.fromMap(Map<String, dynamic> map) {
    return WeeklySchedule(
      scheduleId: map['scheduleId'],
      courseId: map['courseId'],
      classroom: map['classroom'],
      day: map['day'],
      time: map['time'],
    );
  }
}
