part of 'city_search_bloc.dart';

@freezed
class CitySearchEvent with _$CitySearchEvent {
  const factory CitySearchEvent.searchCityByName({required String name}) = _SearchCityByName;
  const factory CitySearchEvent.selectCity({required Place place}) = _SelectCity;
  const factory CitySearchEvent.fetchGeolocation() = _FetchGeolocation;
}
