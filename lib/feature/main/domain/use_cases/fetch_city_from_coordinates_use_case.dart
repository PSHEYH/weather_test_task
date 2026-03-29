




import 'package:weather_test_app/core/use_case/use_case.dart';
import 'package:weather_test_app/feature/main/data/model/coordinates_model.dart';
import 'package:weather_test_app/feature/main/data/model/place_model.dart';
import 'package:weather_test_app/feature/main/domain/repository/city_search_repository.dart';

class FetchCityFromCoordinatesUseCase extends UseCase<Place, Coordinates> {
  const FetchCityFromCoordinatesUseCase({required CitySearchRepository repository}) : _repository = repository;

  final CitySearchRepository _repository;

  @override
  Future<Place> call(Coordinates params) async => await _repository.searchCityByCoordinates(coordinates: params);
}
