import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talker_bloc_logger/talker_bloc_logger.dart';
import 'package:weather_test_app/common/routes/router.dart';
import 'package:weather_test_app/injector.dart';

import 'core/utils/logger/logger.dart';

void main() async{
  await baseSteps();
  FlutterError.onError =
      (details) => Logger.handle(details.exception, details.stack);
  Bloc.observer = TalkerBlocObserver(
    talker: Logger.instance,
    settings: const TalkerBlocLoggerSettings(
      printStateFullData: false,
      printEventFullData: false,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp.router(
      title: 'Weather test app',
      theme: ThemeData(),
      routerConfig: AppRouter().router,
      debugShowCheckedModeBanner: false,
    );
  }
}
