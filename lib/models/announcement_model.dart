class Announcements {
  final int id;
  final String title;
  final String description;
  final String time;

  Announcements({
    required this.id,
    required this.title,
    required this.description,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'time': time,
    };
  }

  factory Announcements.fromMap(Map<String, dynamic> map) {
    return Announcements(
      id: map['id'],
      title: map['title'],
      description: map['description'],
      time: map['time'],
    );
  }
}
