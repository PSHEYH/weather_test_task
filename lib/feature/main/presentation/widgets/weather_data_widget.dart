

import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';
import 'package:weather_test_app/common/theme/app_colors.dart';
import 'package:weather_test_app/feature/main/data/model/weather_forecast_model.dart';
import 'package:weather_test_app/feature/main/presentation/widgets/daily_weather_container.dart';

class WeatherDataWidget extends StatelessWidget {
  const WeatherDataWidget({super.key, required this.weatherForecast});

  final WeatherForecastModel weatherForecast;


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(weatherForecast.currentWeather.weather.convertToWeatherIcon(), size: 34, color: Colors.white,),
                const SizedBox(height: 8,),
                Text('${weatherForecast.currentWeather.temperature} °C', style: TextStyle(color: AppColors.textColor, fontSize: 22),),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Text('${weatherForecast.currentWeather.maxTemperature} °C', style: TextStyle(color: AppColors.maxTemperatureColor, fontSize: 16, fontWeight: FontWeight.w500),),
                    const SizedBox(width: 8,),
                    Text('${weatherForecast.currentWeather.minTemperature} °C', style: TextStyle(color: AppColors.minTemperatureColor, fontSize: 16, fontWeight: FontWeight.w500),),
                    const SizedBox(width: 8,),
                    Icon(WeatherIcons.humidity, size: 16, color: Colors.white,),
                    const SizedBox(width: 4,),
                    Text('${weatherForecast.currentWeather.humidity} %', style: TextStyle(color: AppColors.humidityColor, fontSize: 16, fontWeight: FontWeight.w500),),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 12,),
          Flexible(child: DailyWeatherContainer(dailyWeatherList: weatherForecast.dailyWeatherList)),
        ],
      ),
    );
  }
}


extension WeatherIconExtension on int{
  IconData convertToWeatherIcon(){
    switch(this){
      case 0:
        return WeatherIcons.day_sunny;
      case 1:
      case 2:
        return WeatherIcons.day_cloudy;
      case 3:
        return WeatherIcons.cloud;
      case 45:
      case 48:
        return WeatherIcons.fog;
      case 51:
      case 53:
      case 55:
        return WeatherIcons.showers;
      case 56:
      case 57:
      case 66:
      case 67:
        return WeatherIcons.rain_mix;
      case 61:
      case 63:
      case 65:
        return WeatherIcons.rain;
      case 71:
      case 73:
      case 75:
      case 77:
      case 85:
      case 86:
        return WeatherIcons.snow;
      case 95:
        return WeatherIcons.thunderstorm;
      case 96:
      case 99:
        return WeatherIcons.storm_showers;
      default:
        return WeatherIcons.day_sunny;
    }
  }
}