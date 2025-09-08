class Location {
  final String name;
  final String country;
  final String localTime;
  const Location({
    required this.name,
    required this.country,
    required this.localTime,
  });
  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      name: (json['name'] ?? ''),
      country: (json['country'] ?? ''),
      localTime: (json['localtime'] ?? ''),
    );
  }
}
