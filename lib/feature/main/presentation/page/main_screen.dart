
import 'package:flutter/material.dart';
import 'package:weather_test_app/common/theme/app_colors.dart';
import 'package:weather_test_app/feature/main/presentation/widgets/main_body.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: MainBody(),
    );
  }
}
