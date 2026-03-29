


import 'package:weather_test_app/core/use_case/use_case.dart';
import 'package:weather_test_app/feature/main/data/model/place_model.dart';
import 'package:weather_test_app/feature/main/domain/repository/city_search_repository.dart';

class FetchCitiesByNameUseCase extends UseCase<List<Place>, String> {
  const FetchCitiesByNameUseCase({required CitySearchRepository repository}) : _repository = repository;

  final CitySearchRepository _repository;

  @override
  Future<List<Place>> call(String cityName) async => await _repository.searchCityByName(name: cityName);
}
