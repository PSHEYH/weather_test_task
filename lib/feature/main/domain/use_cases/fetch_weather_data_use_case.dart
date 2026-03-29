

import 'package:weather_test_app/core/use_case/use_case.dart';
import 'package:weather_test_app/feature/main/data/model/coordinates_model.dart';
import 'package:weather_test_app/feature/main/data/model/weather_forecast_model.dart';
import 'package:weather_test_app/feature/main/domain/repository/weather_repository.dart';

class FetchWeatherDataUseCase extends UseCase<WeatherForecastModel, FetchWeatherDataParams> {
  const FetchWeatherDataUseCase({required WeatherRepository weatherRepository}) : _weatherRepository = weatherRepository;

  final WeatherRepository _weatherRepository;

  @override
  Future<WeatherForecastModel> call(FetchWeatherDataParams params) async => await _weatherRepository.fetchWeatherData(
      coordinates: params.coordinates,
      dailyParameters: params.dailyParameters,
      currentWeather: params.currentWeather,
    days: params.days,
  );
}


class FetchWeatherDataParams{
  const FetchWeatherDataParams({
    required this.coordinates,
    required this.dailyParameters,
    required this.currentWeather,
    this.days
});

  final Coordinates coordinates;
  final List<String> dailyParameters;
  final List<String> currentWeather;
  final int? days;
}