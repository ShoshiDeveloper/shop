import 'package:dio/dio.dart';

sealed class SourceException implements Exception {
  const SourceException._();
  factory SourceException.catched(Object e, StackTrace stackTrace) {
    if (e is DioException && e.type == DioExceptionType.connectionTimeout) {
      return NetworkException();
    } else if (e is Error) {
      return ResultException(e.toString(), stackTrace);
    }

    return ResultException('Something went wrong', stackTrace);
  }
}

///Исключение, если в repository implementation произошла ошибка
final class ResultException extends SourceException {
  const ResultException(this.message, this.stackTrace) : super._();

  final String message;
  final StackTrace stackTrace;
}

///Исключение, если время исполнения запросы вышло
final class NetworkException extends SourceException {
  const NetworkException() : super._();
}
