class Announcements {
  final String title;
  final String description;
  final String time;

  Announcements({
    required this.title,
    required this.description,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'time': time,
    };
  }

  factory Announcements.fromMap(Map<String, dynamic> map) {
    return Announcements(
      title: map['title'],
      description: map['description'],
      time: map['time'],
    );
  }
}
