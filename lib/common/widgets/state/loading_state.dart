

import 'package:flutter/material.dart';
import 'package:weather_test_app/common/widgets/circular_progress_indicator/default_circular_progress_indicator.dart';

class LoadingState extends StatelessWidget {
  const LoadingState({
    super.key,
    this.dimension = 56.0,
    this.value,
  });

  final double? dimension;
  final double? value;

  @override
  Widget build(BuildContext context) => DefaultCircularProgressIndicator(
    value: value,
    dimension: dimension,
  );
}
