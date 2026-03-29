import 'package:equatable/equatable.dart';


class CurrentWeatherModel extends Equatable{
  const CurrentWeatherModel({
    required this.weather,
    required this.temperature,
    required this.maxTemperature,
    required this.minTemperature,
    required this.humidity,
  });

  final int weather;
  final double temperature;
  final double minTemperature;
  final double maxTemperature;
  final int humidity;

  @override
  List<Object?> get props => [weather, temperature, minTemperature, maxTemperature, humidity];

  factory CurrentWeatherModel.fromJson(Map<String, dynamic> json) {
    return CurrentWeatherModel(
        temperature: (json['temperature'] as num).toDouble(),
        weather: (json['weather_code'] as num).toInt(),
        maxTemperature: (json['temperature_2m_max'] as num).toDouble(),
        minTemperature: (json['temperature_2m_min'] as num).toDouble(),
        humidity: (json['relative_humidity_2m'] as num).round(),
    );
  }
}