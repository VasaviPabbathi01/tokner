import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:shared/shared.dart';
import 'package:dio/adapter.dart';

class DioBuilder extends DioMixin implements Dio {
  final String contentType = 'application/json';
  final int connectionTimeOutMls = ServerTimeoutConstants.connectTimeoutInMs;
  final int readTimeOutMls = ServerTimeoutConstants.receiveTimeoutInMs;
  final int writeTimeOutMls = ServerTimeoutConstants.sendTimeoutInMs;

  static DioBuilder getInstance({bool ignoredToken = false, BaseOptions? options}) => DioBuilder._(ignoredToken, options);

  DioBuilder._(bool ignoredToken, [BaseOptions? options]) {
    options = BaseOptions(
      validateStatus: (_) => true,
      baseUrl: options?.baseUrl ?? Constants.shared().endpoint,
      contentType: contentType,
      connectTimeout: connectionTimeOutMls,
      receiveTimeout: readTimeOutMls,
      sendTimeout: writeTimeOutMls,
    );

    this.options = options;

    // Add default user agent
    interceptors.add(HeaderInterceptor());

    // Debug mode
    if (kDebugMode) {
      interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
    }
    httpClientAdapter =  DefaultHttpClientAdapter();
  }
}

class HeaderInterceptor extends InterceptorsWrapper {
  Map<String, dynamic> _headers = {};

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers.addAll(_headers);
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.statusCode == 401) {
      throw DioError(
        error: 'Error occurred: ${response.statusCode}',
        response: response,
        requestOptions: response.requestOptions,
        type: DioErrorType.response,
      );
    }
    super.onResponse(response, handler);
  }
}
