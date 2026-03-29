
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:weather_test_app/core/client/rest/open_meteo_api.dart';
import 'package:weather_test_app/core/constants/api_constants.dart';
import 'package:weather_test_app/feature/main/data/model/weather_forecast_model.dart';
import 'package:retrofit/error_logger.dart';

part 'weather_remote_data_source.g.dart';

@RestApi(baseUrl: OpenMeteoApi.baseUrl)
abstract class WeatherRemoteDataSource {
  factory WeatherRemoteDataSource(Dio dio, {String? baseUrl}) = _WeatherRemoteDataSource;
  @GET('forecast')
  Future<WeatherForecastModel> fetchWeatherData({
    @Query(QueryParams.longitude) required double longitude,
    @Query(QueryParams.latitude) required double latitude,
    @Query(QueryParams.dailyWeather) required List<String> dailyParams,
    @Query(QueryParams.currentWeather) required List<String> currentWeather,
    @Query(QueryParams.days) int? days
  });
  
}
