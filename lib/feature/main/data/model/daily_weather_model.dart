

import 'package:equatable/equatable.dart';

class DailyWeatherModel extends Equatable{
  const DailyWeatherModel({
    required this.temperature,
    required this.date,
    required this.humidityPercentage,
    required this.weatherCode
});

  final DateTime date;
  final double? temperature;
  final int? humidityPercentage;
  final int? weatherCode;

  @override
  List<Object?> get props => [ date, temperature, humidityPercentage, weatherCode];

  factory DailyWeatherModel.fromJson(Map<String, dynamic> json) {
    return DailyWeatherModel(
        temperature: (json['temperature_2m_mean'] as num?)?.toDouble(),
        date: DateTime.parse(json['time']),
        humidityPercentage: (json['relative_humidity_2m_mean'] as num?)?.round(),
        weatherCode: (json['weather_code'] as num?)?.toInt()
    );
  }
}