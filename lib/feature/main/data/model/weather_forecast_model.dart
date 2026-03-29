

import 'package:equatable/equatable.dart';
import 'package:weather_test_app/feature/main/data/model/current_weather_model.dart';
import 'package:weather_test_app/feature/main/data/model/daily_weather_model.dart';

class WeatherForecastModel extends Equatable{
  const WeatherForecastModel({
    required this.currentWeather,
    required this.dailyWeatherList
});

  final List<DailyWeatherModel> dailyWeatherList;
  final CurrentWeatherModel currentWeather;

  @override
  List<Object?> get props => [
    currentWeather,
    dailyWeatherList
  ];

  factory WeatherForecastModel.fromJson(Map<String, dynamic> json) {

    final Map<String, dynamic> jsonForCurrentWeather = {
      "temperature": json['current']['temperature_2m'],
      "relative_humidity_2m": json['current']['relative_humidity_2m'],
      "weather_code": json['current']['weather_code'],
      "temperature_2m_max": json['daily']['temperature_2m_max'][0],
      "temperature_2m_min": json['daily']['temperature_2m_min'][0]
    };


    List<Map<String, dynamic>> temporaryJsonList = [];
    List timeList = json['daily']['time'] as List;

    for(int i = 1; i < timeList.length; i++){
      temporaryJsonList.add({
        'time': timeList[i],
        'weather_code': json['daily']['weather_code'][i],
        'temperature_2m_mean': json['daily']['temperature_2m_mean'][i],
        'relative_humidity_2m_mean': json['daily']['relative_humidity_2m_mean'][i]
      });
    }

    return WeatherForecastModel(
        currentWeather: CurrentWeatherModel.fromJson(jsonForCurrentWeather),
        dailyWeatherList: temporaryJsonList.map<DailyWeatherModel>((e) => DailyWeatherModel.fromJson(e)).toList()
    );
  }

}
