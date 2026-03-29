

import 'dart:io';

import 'package:nominatim_flutter/model/request/reverse_request.dart';
import 'package:nominatim_flutter/model/request/search_request.dart';
import 'package:nominatim_flutter/model/response/nominatim_response.dart';
import 'package:nominatim_flutter/nominatim_flutter.dart';
import 'package:weather_test_app/core/exceptions/api_exceptions.dart';
import 'package:weather_test_app/feature/main/data/model/coordinates_model.dart';
import 'package:weather_test_app/feature/main/data/model/place_model.dart';
import 'package:weather_test_app/feature/main/domain/repository/city_search_repository.dart';

class CitySearchRepositoryImpl extends CitySearchRepository {

  @override
  Future<List<Place>> searchCityByName({required String name}) async {

    try {
      final searchRequest = SearchRequest(
        query: name.trim(),
        limit: 5,
        addressDetails: true,
        extraTags: true,
        nameDetails: true,
      );

      List<NominatimResponse> responses = await NominatimFlutter.instance.search(
        searchRequest: searchRequest,
        language: '${Platform.localeName.split('_')[0]};q=0.5',
      );

      if (responses.isEmpty) {
        return [];
      }

      return responses
          .where((e) => e.displayName != null && e.lat != null && e.lon != null)
          .map((e) {
            final lat = double.tryParse(e.lat!);
            final lon = double.tryParse(e.lon!);
            if (lat == null || lon == null) {
              throw RepositoryException('Invalid coordinates for ${e.displayName}');
            }
            return Place(
              displayName: e.displayName!,
              latitude: lat,
              longitude: lon,
              address: e.address ?? {},
            );
          })
          .toList();
    } on SocketException catch (e) {
      throw NetworkException(e.message);
    } catch (e) {
      throw RepositoryException('Failed to search cities: $e');
    }
  }

  @override
  Future<Place> searchCityByCoordinates({required Coordinates coordinates}) async {
    try {
      final reverseSearch = ReverseRequest(
        lat: coordinates.latitude,
        lon: coordinates.longitude,
        addressDetails: true,
        extraTags: true,
        nameDetails: true,
      );

      NominatimResponse response = await NominatimFlutter.instance.reverse(
        reverseRequest: reverseSearch,
        language: Platform.localeName.split('_')[0],
      );

      if (response.displayName == null) {
        throw RepositoryException('No location found for the given coordinates');
      }

      return Place(
        displayName: response.displayName!,
        latitude: coordinates.latitude,
        longitude: coordinates.longitude,
        address: response.address ?? {},
      );
    } on SocketException catch (e) {
      throw NetworkException(e.message);
    } catch (e) {
      throw RepositoryException('Failed to find city by coordinates: $e');
    }
  }
}