import 'package:weather_test_app/core/exceptions/api_exceptions.dart';
import 'package:weather_test_app/feature/main/data/data_sources/remote/weather_remote_data_source.dart';
import 'package:weather_test_app/feature/main/data/model/coordinates_model.dart';
import 'package:weather_test_app/feature/main/data/model/weather_forecast_model.dart';
import 'package:weather_test_app/feature/main/domain/repository/weather_repository.dart';

class WeatherRepositoryImpl extends WeatherRepository {
  final WeatherRemoteDataSource _weatherRemoteDataSource;

  WeatherRepositoryImpl({
    required final WeatherRemoteDataSource weatherRemoteDataSource,
  }) : _weatherRemoteDataSource = weatherRemoteDataSource;

  @override
  Future<WeatherForecastModel> fetchWeatherData({
    required Coordinates coordinates,
    required List<String> dailyParameters,
    required List<String> currentWeather,
    int? days
  }) async {
    try {
      return await _weatherRemoteDataSource.fetchWeatherData(
        longitude: coordinates.longitude,
        latitude: coordinates.latitude,
        dailyParams: dailyParameters,
        currentWeather: currentWeather,
        days: days
      );
    } catch (e) {
      throw RepositoryException('Failed to fetch weather data: $e');
    }
  }
}
