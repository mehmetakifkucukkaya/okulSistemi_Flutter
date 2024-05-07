class Campus {
  final int campusId;
  final String name;
  final String latitude;
  final String longitude;
  final String img;

  Campus({
    required this.campusId,
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.img,
  });

  Map<String, dynamic> toMap() {
    return {
      'campusId': campusId,
      'name': name,
      'latitude': latitude,
      'longitude': longitude,
      'img': img,
    };
  }

  factory Campus.fromMap(Map<String, dynamic> map) {
    return Campus(
      campusId: map['campusId'],
      name: map['name'],
      latitude: map['latitude'],
      longitude: map['longitude'],
      img: map['img'],
    );
  }
}
