class Campus {
  final int campuseId;
  final String name;
  final String latitude;
  final String longitude;
  final String img;

  Campus({
    required this.campuseId,
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.img,
  });

  Map<String, dynamic> toMap() {
    return {
      'campuseId': campuseId,
      'name': name,
      'latitude': latitude,
      'longitude': longitude,
      'img': img,
    };
  }

  factory Campus.fromMap(Map<String, dynamic> map) {
    return Campus(
      campuseId: map['campuseId'],
      name: map['name'],
      latitude: map['latitude'],
      longitude: map['longitude'],
      img: map['img'],
    );
  }
}
