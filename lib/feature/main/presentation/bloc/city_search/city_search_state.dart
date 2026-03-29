part of 'city_search_bloc.dart';

@freezed
class CitySearchState with _$CitySearchState {
  const CitySearchState._();

  bool get isLoading => when(
    initial: () => true,
    loading: (_) => true,
    success: (_) => false,
    loadedSearchList: (_, __) => false,
    failure: (_, __) => false,
  );

  Place? get currentPlace => when(
    initial: () => null,
    loading: (currentPlace) => currentPlace,
    loadedSearchList: (currentPlace, _) => currentPlace,
    success: (currentPlace) => currentPlace,
    failure: (_, currentPlace) => currentPlace,
  );

  String get cityName => currentPlace != null ? (currentPlace!.address['city'] ?? currentPlace!.displayName) : '';

  const factory CitySearchState.initial() = _Initial;

  const factory CitySearchState.loading({required Place? place}) = _Loading;

  const factory CitySearchState.loadedSearchList({ required Place? place, required List<Place> searchList}) = _LoadedSearchList;

  const factory CitySearchState.success({
    required Place place,
  }) = _Success;

  const factory CitySearchState.failure(
      String message, {
        required Place? place
      }) = _Failure;
}
