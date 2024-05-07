class Campuses {
  final String name;
  final String latitude;
  final String longitude;
  final String img;

  Campuses({
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.img,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'latitude': latitude,
      'longitude': longitude,
      'img': img,
    };
  }

  factory Campuses.fromMap(Map<String, dynamic> map) {
    return Campuses(
      name: map['name'],
      latitude: map['latitude'],
      longitude: map['longitude'],
      img: map['img'],
    );
  }
}
