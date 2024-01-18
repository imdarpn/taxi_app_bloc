import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../repository/local_data/local_data_source.dart';
import '../../../utils/logger_util.dart';
import '../../di/injector_container.dart';
import '../storage_service/storage_keys.dart';
import 'configs.dart';

class ApiInterceptors extends InterceptorsWrapper {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final method = options.method;
    final uri = options.uri;
    final data = options.data;

    String? token =
        await getIt<LocalDataSource>().getData(StorageKeys.keyToken);

    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = "Bearer $token";
    }
    options.headers['key'] = Configs.defaultKey;
    // options.headers['Accept'] = 'application/json';

    if (method == 'GET') {
      logger.log(
        "✈️ REQUEST[$method] => PATH: $uri \n Token: ${options.headers}",
        printFullText: true,
      );
    } else {
      try {
        logger.log(
          "✈️ REQUEST[$method] => PATH: $uri \n Token:${options.headers} \n DATA: ${jsonEncode(data)}",
          printFullText: true,
        );
      } catch (e) {
        logger.log(
          "✈️ REQUEST[$method] => PATH: $uri \n Token: ${options.headers} \n DATA: ${data.files.toString()}",
          printFullText: true,
        );
      }
    }
    super.onRequest(options, handler);
  }

  @override
  Future<void> onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    final statusCode = response.statusCode;
    final uri = response.requestOptions.uri;
    final data = jsonEncode(response.data);
    logger.log(
      "✅ RESPONSE[$statusCode] => PATH: $uri\n DATA: $data",
      printFullText: true,
    );

    // handle error state
    if (response.data["code"] == 0) {
    } else {
      super.onResponse(response, handler);
    }
    // Handle section expired
  }

  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    final statusCode = err.response?.statusCode!;
    final uri = err.requestOptions.path;
    var data = "";
    try {
      data = jsonEncode(err.response!.data);
    } catch (e) {
      logger.log(e.toString());
    }
    logger.log(
      "⚠️ ERROR[$statusCode] => PATH: $uri\n DATA: $data",
      printFullText: true,
    );
    super.onError(err, handler);
  }
}
