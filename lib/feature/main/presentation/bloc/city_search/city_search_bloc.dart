import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc_event_transformers/bloc_event_transformers.dart';
import 'package:weather_test_app/core/services/geolocation_service.dart';
import 'package:weather_test_app/core/utils/error/error_mapper.dart';
import 'package:weather_test_app/core/utils/logger/logger.dart';
import 'package:weather_test_app/feature/main/data/model/coordinates_model.dart';
import 'package:weather_test_app/feature/main/data/model/place_model.dart';
import 'package:weather_test_app/feature/main/domain/use_cases/fetch_cities_by_name_use_case.dart';
import 'package:weather_test_app/feature/main/domain/use_cases/fetch_city_from_coordinates_use_case.dart';

part 'city_search_event.dart';
part 'city_search_state.dart';
part 'city_search_bloc.freezed.dart';

class CitySearchBloc extends Bloc<CitySearchEvent, CitySearchState> {
  CitySearchBloc({
    required FetchCitiesByNameUseCase fetchCitiesByNameUseCase,
    required FetchCityFromCoordinatesUseCase fetchCityFromCoordinatesUseCase,
    required GeolocationService geolocationService,
  }) : _fetchCitiesByNameUseCase = fetchCitiesByNameUseCase,
        _fetchCityFromCoordinatesUseCase = fetchCityFromCoordinatesUseCase,
        _geolocationService = geolocationService,
        super(const CitySearchState.initial()) {

    on<_SearchCityByName>(
      _onSearchCityByName,
      transformer: debounce(
        const Duration(milliseconds: 800),
      ),
    );

    on<_FetchGeolocation>(_onFetchGeolocation);
    on<_SelectCity>(_onSelectCity);
    on<_ClearSearchList>(_onClearSearchList);
  }

  final FetchCitiesByNameUseCase _fetchCitiesByNameUseCase;
  final FetchCityFromCoordinatesUseCase _fetchCityFromCoordinatesUseCase;
  final GeolocationService _geolocationService;


  _onFetchGeolocation(_FetchGeolocation event, Emitter<CitySearchState> emit) async{
    try{
      emit(CitySearchState.loading(place: state.currentPlace));
      final Coordinates currentPosition = await _geolocationService.determinePosition();
      final Place place = await _fetchCityFromCoordinatesUseCase.call(currentPosition);
      emit(CitySearchState.success(place: place));
    } on Object catch(error){
      final apiException = ErrorMapper.mapError(error);
      Logger.error(apiException.message);
      emit(CitySearchState.failure(apiException.message, place: null));
    }
  }

  _onSearchCityByName(_SearchCityByName event, Emitter<CitySearchState> emit) async {
    try{
      if(event.name.trim().isEmpty){
        emit(CitySearchState.loadedSearchList(place: state.currentPlace, searchList: []));
      } else {
        List<Place> places = await _fetchCitiesByNameUseCase.call(event.name);
        emit(CitySearchState.loadedSearchList(place: state.currentPlace, searchList: places));
      }
    } on Object catch(error){
      final apiException = ErrorMapper.mapError(error);
      Logger.error(apiException.message);
      emit(CitySearchState.failure(apiException.message, place: state.currentPlace));
    }
  }

  _onSelectCity(_SelectCity event, Emitter<CitySearchState> emit) async{
    emit(CitySearchState.loading(place: state.currentPlace));
    emit(CitySearchState.success(place: event.place));
  }

  _onClearSearchList(_ClearSearchList event, Emitter<CitySearchState> emit) async{
    state.maybeMap(orElse: (){}, loadedSearchList: (s) {
      emit(CitySearchState.loadedSearchList(place: state.currentPlace, searchList: []));
    });
  }


}
