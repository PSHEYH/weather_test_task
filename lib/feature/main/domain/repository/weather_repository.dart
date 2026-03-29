
import 'package:weather_test_app/feature/main/data/model/coordinates_model.dart';
import 'package:weather_test_app/feature/main/data/model/weather_forecast_model.dart';

abstract class WeatherRepository{
  Future<WeatherForecastModel> fetchWeatherData({
    required Coordinates coordinates,
    required List<String> dailyParameters,
    required List<String> currentWeather,
    int? days
  });


}