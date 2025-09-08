class Current {
  final double tempC;
  final double tempF;
  final double windKph;
  final double feelC;
  final double feelF;
  final String windDir;
  final double humidity;
  final double cloud;
  final double precipMm;
  final double uv;
  final double visKm;
  final double pressureMb;
  final Condition condition;
  const Current({
    required this.tempC,
    required this.tempF,
    required this.windKph,
    required this.feelC,
    required this.feelF,
    required this.windDir,
    required this.humidity,
    required this.cloud,
    required this.precipMm,
    required this.uv,
    required this.visKm,
    required this.pressureMb,
    required this.condition,
  });
  factory Current.fromJson(Map<String, dynamic> json) {
    return Current(
      tempC: (json['temp_c'] as num?)?.toDouble() ?? 0.0,
      tempF: (json['temp_f'] as num?)?.toDouble() ?? 0.0,
      feelC: (json['feelslike_c'] as num?)?.toDouble() ?? 0.0,
      feelF: (json['feelslike_f'] as num?)?.toDouble() ?? 0.0,
      cloud: (json['cloud'] as num?)?.toDouble() ?? 0.0,
      humidity: (json['humidity'] as num?)?.toDouble() ?? 0.0,
      windKph: (json['wind_kph'] as num?)?.toDouble() ?? 0.0,
      precipMm: (json['precip_mm'] as num?)?.toDouble() ?? 0.0,
      uv: (json['uv'] as num?)?.toDouble() ?? 0.0,
      visKm: (json['vis_km'] as num?)?.toDouble() ?? 0.0,
      pressureMb: (json['pressure_mb'] as num?)?.toDouble() ?? 0.0,
      windDir: json['wind_dir'] ?? '',
      condition: Condition.fromJson(json['condition'] ?? {}),
    );
  }
}

class Condition {
  final String text;
  final String icon;
  const Condition({required this.text, required this.icon});
  factory Condition.fromJson(Map<String, dynamic> json) {
    return Condition(text: json['text'] ?? "", icon: json['icon'] ?? "");
  }
}
