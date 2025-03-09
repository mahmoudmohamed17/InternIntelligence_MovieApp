import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:movie_app/helpers/app_strings.dart';

class DioInterceptor implements Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    log('onError: ${err.message}');
    handler.next(err);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['Authorization'] = 'Bearer ${AppStrings.myToken}';
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log('onResponse: ${response.realUri}');
    handler.next(response);
  }
}
