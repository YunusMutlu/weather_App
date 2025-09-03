import 'package:weather_app/models/current.dart';
import 'package:weather_app/models/location.dart';
class Weather {
  final Current current;
  final Location location;
  const Weather({required this.current, required this.location});

  
  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      location: Location.fromJson(json['location']),
      current: Current.fromJson(json['current']),
    );
  }
}
