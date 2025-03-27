import 'package:dio/dio.dart';
import 'package:shop/core/errors/source_exception.dart';
import 'package:shop/core/utils/source_result.dart';

///Класс для обращения к API
class ApiSource {
  ApiSource._(this.serverUrl);
  factory ApiSource._dev() => ApiSource._('dev.shop.ru');
  factory ApiSource._prod() => ApiSource._('prod.shop.ru');
  factory ApiSource._test() => ApiSource._('test.shop.ru');

  static ApiSource instance = ApiSource._dev();

  final String serverUrl;
  late final Dio _dio = Dio(BaseOptions(baseUrl: serverUrl));

  Future<Result<Response?>> get(String route, {Object? body, Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await _dio.get(route, data: body, queryParameters: queryParameters);
      return Result.ok(response);
    } catch (e, st) {
      return Result.error(SourceException.catched(e, st));
    }
  }

  Future<Result<Response?>> post(String route, {Object? body, Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await _dio.post(route, data: body, queryParameters: queryParameters);
      return Result.ok(response);
    } catch (e, st) {
      return Result.error(SourceException.catched(e, st));
    }
  }

  Future<Result<Response?>> put(String route, {Object? body, Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await _dio.put(route, data: body, queryParameters: queryParameters);
      return Result.ok(response);
    } catch (e, st) {
      return Result.error(SourceException.catched(e, st));
    }
  }

  Future<Result<Response?>> delete(String route, {Object? body, Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await _dio.delete(route, data: body, queryParameters: queryParameters);
      return Result.ok(response);
    } catch (e, st) {
      return Result.error(SourceException.catched(e, st));
    }
  }
}
