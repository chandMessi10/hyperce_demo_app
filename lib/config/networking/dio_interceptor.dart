import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class DioInterceptor implements Interceptor {
  final cancelToken = CancelToken();

  @override
  void onError(DioException error, ErrorInterceptorHandler handler) async {
    debugPrint(
      "Dio_Error [${error.response?.statusCode}] => MESSAGE: ${error.message}",
    );
    return handler.next(error);
  }

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // debugPrint("Dio_Request [${options.method}] => PATH: ${options.path}");
    options.receiveDataWhenStatusError = true;
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    // debugPrint("Dio_Response [${response.statusCode}] => DATA: ${response.data}");
    return handler.next(response);
  }
}
