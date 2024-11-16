import 'dart:io';

import 'package:dio/dio.dart';

String mapDioExceptionToMessage(DioException error) {
  switch (error.type) {
    case DioExceptionType.connectionTimeout:
      return 'Connection timeout. Please try again later.';
    case DioExceptionType.sendTimeout:
      return 'Send timeout. Please try again later.';
    case DioExceptionType.receiveTimeout:
      return 'Receive timeout. Please try again later.';
    case DioExceptionType.badResponse:
      return 'Bad response: ${error.response?.statusCode}';
    case DioExceptionType.cancel:
      return 'Request was cancelled.';
    case DioExceptionType.unknown:
      if (error.error is SocketException) {
        return "No Internet Connection";
      }
      return 'Unknown error occurred.';
    default:
      return 'Something went wrong.';
  }
}
