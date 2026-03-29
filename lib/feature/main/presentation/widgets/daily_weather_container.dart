

import 'package:flutter/material.dart';
import 'package:weather_test_app/feature/main/data/model/daily_weather_model.dart';
import 'package:weather_test_app/feature/main/presentation/widgets/day_weather_row.dart';

class DailyWeatherContainer extends StatelessWidget {
  const DailyWeatherContainer({super.key, required this.dailyWeatherList});

  final List<DailyWeatherModel> dailyWeatherList;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(bottom: 30),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: Colors.white, width: 1)
        ),
        child: Column(
          children: [
            ...dailyWeatherList.map((e) => DayWeatherRow(dailyWeather: e))
          ],
        ),
      ),
    );
  }
}
