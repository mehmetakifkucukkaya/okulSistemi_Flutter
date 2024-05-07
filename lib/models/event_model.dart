class Event {
  final int id;
  final String date;
  final String event;

  Event({
    required this.id,
    required this.date,
    required this.event,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'date': date,
      'event': event,
    };
  }

  factory Event.fromMap(Map<String, dynamic> map) {
    return Event(
      id: map['id'],
      date: map['date'],
      event: map['event'],
    );
  }
}
