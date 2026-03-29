import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_test_app/common/theme/app_colors.dart';
import 'package:weather_test_app/common/widgets/snackbar/error_snackbar.dart';
import 'package:weather_test_app/common/widgets/state/expanded_loading_state.dart';
import 'package:weather_test_app/common/widgets/state/loading_state.dart';
import 'package:weather_test_app/core/services/geolocation_service.dart';
import 'package:weather_test_app/feature/main/data/model/coordinates_model.dart';
import 'package:weather_test_app/feature/main/domain/use_cases/fetch_cities_by_name_use_case.dart';
import 'package:weather_test_app/feature/main/domain/use_cases/fetch_city_from_coordinates_use_case.dart';
import 'package:weather_test_app/feature/main/domain/use_cases/fetch_weather_data_use_case.dart';
import 'package:weather_test_app/feature/main/presentation/bloc/city_search/city_search_bloc.dart';
import 'package:weather_test_app/feature/main/presentation/bloc/weather/weather_bloc.dart';
import 'package:weather_test_app/feature/main/presentation/widgets/composited_search_city_text_field.dart';
import 'package:weather_test_app/feature/main/presentation/widgets/weather_data_widget.dart';
import 'package:weather_test_app/injector.dart';

class MainBody extends StatefulWidget {
  const MainBody({super.key});

  @override
  State<MainBody> createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  final TextStyle cityTextStyle = TextStyle(color: AppColors.textColor, fontSize: 18);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CitySearchBloc(
            fetchCitiesByNameUseCase: injector<FetchCitiesByNameUseCase>(),
            fetchCityFromCoordinatesUseCase: injector<FetchCityFromCoordinatesUseCase>(),
            geolocationService: injector<GeolocationService>())..add(CitySearchEvent.fetchGeolocation())
        ),
        BlocProvider(create: (context) => WeatherBloc(
          fetchWeatherDataUseCase: injector<FetchWeatherDataUseCase>()
        ))
      ],
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.only(top: 18, left: 14, right: 14),
          child: Column(
            children: [
              Padding(padding: const EdgeInsets.symmetric(vertical: 20), child: CompositedSearchCityTextField()),
                BlocConsumer<CitySearchBloc, CitySearchState>(
                    builder: (context, state) {
                      return state.map(
                          initial: (s) => LoadingState(),
                          loading: (s) => LoadingState(),
                          success: (s) => Text(s.cityName, style: cityTextStyle,),
                          loadedSearchList: (s) => Text(s.cityName, style: cityTextStyle,),
                          failure: (s) => Text(s.cityName, style: cityTextStyle),
                      );
                    },
                    listener: (context, state){
                      state.maybeMap(orElse: () {},
                          failure: (s) {
                            ErrorSnackBar.show(context: context, message: s.message);
                          },
                          success: (s) {
                        context.read<WeatherBloc>().add(WeatherEvent.fetchWeatherData(coordinates: Coordinates(latitude: s.place.latitude, longitude: s.place.longitude)));
                      });
                    },
                  listenWhen: (prev, current){
                      bool isPrevStateLoading = prev.maybeMap(orElse: () => false, loading: (s) => true);
                      bool isCurrentStateSuccess = current.maybeMap(orElse: () => false, success: (s) => true);
                      bool isCurrentStateFailure = current.maybeMap(orElse: () => false, failure: (s) => true);
                      return (isPrevStateLoading && isCurrentStateSuccess) || isCurrentStateFailure;
                  },
                ),
              const SizedBox(height: 16,),
              BlocConsumer<WeatherBloc, WeatherState>(
                listener: (context, state){
                  state.maybeMap(
                      failure: (s) {
                        ErrorSnackBar.show(context: context, message: s.message);
                      },
                      orElse: (){}
                  );
                },
                  builder: (context, state){
                    return state.map(
                        initial: (s) => ExpandedLoadingState(),
                        loading: (s) => ExpandedLoadingState(),
                        success: (s) => WeatherDataWidget(weatherForecast: s.weatherData),
                        failure: (s) => s.oldWeatherData != null ? WeatherDataWidget(weatherForecast: s.oldWeatherData!) : ExpandedLoadingState(),
                    );
                  }
              )
            ],
          ),
        ),
      ),
    );
  }
}
