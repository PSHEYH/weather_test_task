

import 'package:get_it/get_it.dart';
import 'package:weather_test_app/core/client/rest/open_meteo_api.dart';
import 'package:weather_test_app/core/services/geolocation_service.dart';
import 'package:weather_test_app/feature/main/data/repository/city_search_repository_impl.dart';
import 'package:weather_test_app/feature/main/data/repository/weather_repository_impl.dart';
import 'package:weather_test_app/feature/main/domain/repository/city_search_repository.dart';
import 'package:weather_test_app/feature/main/domain/repository/weather_repository.dart';
import 'package:weather_test_app/feature/main/domain/use_cases/fetch_cities_by_name_use_case.dart';
import 'package:weather_test_app/feature/main/domain/use_cases/fetch_city_from_coordinates_use_case.dart';
import 'package:weather_test_app/feature/main/domain/use_cases/fetch_weather_data_use_case.dart';

import 'feature/main/data/data_sources/remote/weather_remote_data_source.dart';

final injector = GetIt.instance;

Future<void> baseSteps() async {

  injector.registerLazySingleton<OpenMeteoApi>(() => OpenMeteoApi());
  injector.registerLazySingleton<WeatherRemoteDataSource>(
          () => WeatherRemoteDataSource(injector<OpenMeteoApi>().dio));

  injector.registerLazySingleton<WeatherRepository>(() => WeatherRepositoryImpl(
    weatherRemoteDataSource: injector<WeatherRemoteDataSource>(),
  ));
  injector.registerLazySingleton<CitySearchRepository>(() => CitySearchRepositoryImpl());

  injector.registerLazySingleton(() => FetchWeatherDataUseCase(weatherRepository: injector<WeatherRepository>(),));
  injector.registerLazySingleton(() => FetchCitiesByNameUseCase(repository: injector<CitySearchRepository>()));
  injector.registerLazySingleton(() => FetchCityFromCoordinatesUseCase(repository: injector<CitySearchRepository>()));
  injector.registerLazySingleton(() => GeolocationService());
}