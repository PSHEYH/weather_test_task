

import 'package:weather_test_app/feature/main/data/model/coordinates_model.dart';
import 'package:weather_test_app/feature/main/data/model/place_model.dart';

abstract class CitySearchRepository{
  Future<List<Place>> searchCityByName({ required String name});

  Future<Place> searchCityByCoordinates({ required Coordinates coordinates});
}