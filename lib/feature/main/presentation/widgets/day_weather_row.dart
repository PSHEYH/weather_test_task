
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_test_app/common/theme/app_colors.dart';
import 'package:weather_test_app/feature/main/data/model/daily_weather_model.dart';
import 'package:weather_test_app/feature/main/presentation/widgets/weather_data_widget.dart';

class DayWeatherRow extends StatelessWidget {
  const DayWeatherRow({super.key, required this.dailyWeather});

  final DailyWeatherModel dailyWeather;

  String get temperatureString => dailyWeather.temperature != null ? '${dailyWeather.temperature} °C' : 'Unknown';
  String get humidityString => dailyWeather.humidityPercentage != null ? '${(dailyWeather.humidityPercentage ?? 0)} %' : 'Unknown';

  final String _dateStringFormat = 'EEEE';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(dailyWeather.weatherCode != null ? (dailyWeather.weatherCode!).convertToWeatherIcon() : Icons.question_mark, size: 22, color: AppColors.iconColor,),
          const SizedBox(width: 6,),
          Text('- ${DateFormat(_dateStringFormat).format(dailyWeather.date)}', style: TextStyle(color:  AppColors.textColor, fontSize: 16),),
          Expanded(child: Text('-', textAlign: TextAlign.center, style: TextStyle(color:  AppColors.textColor, fontSize: 14))),
          Text('$temperatureString  -', style: TextStyle(color:  AppColors.textColor, fontSize: 14),),
          const SizedBox(width: 8,),
          Text(humidityString, style: TextStyle(color:  AppColors.textColor, fontSize: 14),),
        ],
      ),
    );
  }
}
