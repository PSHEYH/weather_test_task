

import 'package:dio/dio.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';
import 'package:weather_test_app/core/utils/logger/logger.dart';

class OpenMeteoApi {

  static const baseUrl = 'https://api.open-meteo.com/v1/';

  OpenMeteoApi() {
    _dio = Dio(_options())
      ..interceptors.addAll([dioLogger, wrapper()]);
  }

  late final Dio _dio;
  Dio get dio => _dio;


  final dioLogger = TalkerDioLogger(
    talker: Logger.instance,
    settings: const TalkerDioLoggerSettings(),
  );

  BaseOptions _options() => BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: const Duration(seconds: 16),
    receiveTimeout: const Duration(seconds: 16),
    sendTimeout: const Duration(seconds: 16),
  );

  QueuedInterceptorsWrapper wrapper() => QueuedInterceptorsWrapper(
    onRequest: (options, handler) {
      return handler.next(options);
    },
    onResponse: (response, handler) async {
      return handler.next(response);
    },
    onError: (error, handler) async {
      return handler.next(error);
    },
  );
}
