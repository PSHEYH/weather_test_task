
import 'package:flutter/material.dart';
import 'package:weather_test_app/common/widgets/state/loading_state.dart';

class ExpandedLoadingState extends StatelessWidget {
  const ExpandedLoadingState({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: LoadingState());
  }
}
