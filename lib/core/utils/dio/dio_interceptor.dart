import 'package:dio/dio.dart';
import 'package:hive/hive.dart';

class DioInterceptor extends Interceptor {
  final Box? tokens;
  final Dio? dio;

  DioInterceptor({
    this.tokens,
    this.dio,
  });

  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    String? accessToken = tokens?.get('access');

    if (accessToken != null) {
      if (!options.path.contains('signin')) {
        options.headers['Authorization'] = 'Bearer $accessToken';
      }
    }

    return handler.next(options);
  }
}
