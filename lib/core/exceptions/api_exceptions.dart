/// Base exception for API-related errors
abstract class ApiException implements Exception {
  ApiException(this.message);
  final String message;

  @override
  String toString() => message;
}


class NetworkException extends ApiException {
  NetworkException(String message) : super('Network error: $message');
}

class TimeoutException extends ApiException {
  TimeoutException() : super('Request timeout - please try again');
}

class ValidationException extends ApiException {
  ValidationException(String details) : super('Validation error: $details');
}

class ServerException extends ApiException {
  ServerException(String message) : super('Server error: $message');
}


class NotFoundException extends ApiException {
  NotFoundException() : super('Resource not found');
}

class TooManyRequestsException extends ApiException {
  TooManyRequestsException() : super('Too many requests - please try again later');
}

class ServiceUnavailableException extends ApiException {
  ServiceUnavailableException() : super('Service unavailable - please try again later');
}

class UnknownException extends ApiException{
  UnknownException(String message) : super('Unexpected error');
}

class RepositoryException extends ApiException {
  RepositoryException(String message) : super('Repository error: $message');
}