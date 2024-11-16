import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'dio_interceptor.dart';

class DioClient {
  final Dio _dio = Dio();

  DioClient() {
    setBaseUrl();
    _setupInterceptors();
  }

  void _setupInterceptors() {
    _dio.interceptors.add(DioInterceptor());
    if (kDebugMode) {
      _dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
        ),
      );
    }
  }

  void setBaseUrl() async {
    _dio.options = BaseOptions(
      baseUrl: "https://admin.hyperce.io/",
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    );
  }

  Dio get dio => _dio;
}
