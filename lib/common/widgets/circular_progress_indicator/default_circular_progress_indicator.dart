
import 'package:flutter/material.dart';

class DefaultCircularProgressIndicator extends StatelessWidget {
  const DefaultCircularProgressIndicator({
    super.key,
    this.strokeWidth = 7.0,
    this.strokeCap,
    this.value,
    this.dimension,
  });

  final double strokeWidth;
  final StrokeCap? strokeCap;
  final double? value;
  final double? dimension;

  @override
  Widget build(BuildContext context) => Center(
    child: SizedBox.square(
      dimension: dimension,
      child: CircularProgressIndicator(
        value: value,
        color: Colors.white,
        strokeWidth: strokeWidth,
        strokeCap: strokeCap ?? StrokeCap.round,
        backgroundColor: Colors.white.withAlpha(170),
      ),
    ),
  );
}
