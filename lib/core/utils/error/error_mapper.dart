

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:weather_test_app/core/exceptions/api_exceptions.dart';

class ErrorMapper {
  static ApiException mapError(dynamic error) {
    if (error is DioException) {
      return _mapDioException(error);
    }
    if (error is SocketException) {
      return NetworkException('No internet connection');
    }
    return UnknownException('An unexpected error occurred: $error');
  }

  static ApiException _mapDioException(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
        return TimeoutException();
      case DioExceptionType.connectionError:
        return NetworkException(error.message ?? 'Connection failed');
      case DioExceptionType.badResponse:
        return _mapStatusCode(error);
      default:
        return UnknownException(error.message ?? 'Unexpected error');
    }
  }

  static ApiException _mapStatusCode(DioException error) {
    final statusCode = error.response?.statusCode;
    final responseData = error.response?.data;

    switch (statusCode) {
      case 400:
        final message = responseData is Map<String, dynamic>
            ? responseData['message'] ?? 'Bad request'
            : 'Bad request';
        return ValidationException(message);
      case 404:
        return NotFoundException();
      case 429:
        return TooManyRequestsException();
      case 500:
      case 502:
      case 503:
      case 504:
        return ServerException('Server error (${statusCode})');
      default:
        return UnknownException('Unexpected error (${statusCode ?? 'unknown'})');
    }
  }
}
