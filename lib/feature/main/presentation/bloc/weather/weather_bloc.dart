import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_test_app/core/utils/error/error_mapper.dart';
import 'package:weather_test_app/core/utils/logger/logger.dart';
import 'package:weather_test_app/feature/main/data/model/coordinates_model.dart';
import 'package:weather_test_app/feature/main/data/model/weather_forecast_model.dart';
import 'package:weather_test_app/feature/main/domain/use_cases/fetch_weather_data_use_case.dart';

part 'weather_event.dart';
part 'weather_state.dart';
part 'weather_bloc.freezed.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc({ required FetchWeatherDataUseCase fetchWeatherDataUseCase}) : _fetchWeatherDataUseCase = fetchWeatherDataUseCase, super(const WeatherState.initial()) {
    on<WeatherEvent>((event, emit) async {
      await event.map(fetchWeatherData: (e) => _onFetchWeatherData(e, emit));
    });
  }

  final FetchWeatherDataUseCase _fetchWeatherDataUseCase;

  final List<String> _currentWeatherParameterList = ['temperature_2m','relative_humidity_2m','weather_code'];
  final List<String> _dailyWeatherParameterList = ['weather_code','temperature_2m_min','temperature_2m_max','relative_humidity_2m_mean','temperature_2m_mean'];
  final int _countForecastDays = 16;

  _onFetchWeatherData(_FetchWeatherData event, Emitter<WeatherState> emit) async{
    try{
      emit(WeatherState.loading(oldWeatherData: state.currentWeatherData));
      final WeatherForecastModel weatherData = await _fetchWeatherDataUseCase.call(
          FetchWeatherDataParams(
              coordinates: event.coordinates,
              currentWeather: _currentWeatherParameterList,
              dailyParameters: _dailyWeatherParameterList,
              days: _countForecastDays
          )
      );
      emit(WeatherState.success(weatherData: weatherData));
    } on Object catch(error) {
      final apiException = ErrorMapper.mapError(error);
      Logger.error(apiException.message);
      emit(WeatherState.failure(apiException.message, oldWeatherData: state.currentWeatherData));
    }

  }
}
