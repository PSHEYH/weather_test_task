part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {

  const WeatherState._();

  WeatherForecastModel? get currentWeatherData => when(
    initial: () => null,
    loading: (oldWeatherData) => oldWeatherData,
    success: (weatherData) => weatherData,
    failure: (_, oldWeatherData) => oldWeatherData,
  );

  const factory WeatherState.initial() = _Initial;

  const factory WeatherState.loading({ required WeatherForecastModel? oldWeatherData}) = _Loading;

  const factory WeatherState.success({ required WeatherForecastModel weatherData}) = _Success;

  const factory WeatherState.failure(String message, { required WeatherForecastModel? oldWeatherData }) = _Failure;
}
