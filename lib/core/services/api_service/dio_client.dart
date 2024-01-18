import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../common/common_methods.dart';
import '../../enums/method_type.dart';
import '../../models/common_response/common_response.dart';
import '../../models/failure_response.dart';
import 'api_interceptor.dart';
import 'configs.dart';
import 'package:dartz/dartz.dart';

@Injectable()
class DioClient {
  late Dio _dio;

  DioClient() {
    _dio = Dio(
      BaseOptions(baseUrl: Configs.baseUrl + Configs.appNameUrl),
    )..interceptors.add(ApiInterceptors());
  }

  Future<Either<FailureResponse, CommonResponse>> request(
    String url,
    MethodType method,
    params,
  ) async {
    try {
      Response response;
      if (await CommonMethods.checkConnectivity()) {
        if (method == MethodType.post) {
          response = await _dio.post(url, data: params);
        } else if (method == MethodType.delete) {
          response = await _dio.delete(url);
        } else if (method == MethodType.patch) {
          response = await _dio.patch(url);
        } else if (method == MethodType.put) {
          response = await _dio.put(url, data: params);
        } else {
          response = await _dio.get(url);
        }

        return right(
          CommonResponse.fromJson(response.data, (json) => json),
        );
      } else {
        return left(
          FailureResponse(false, "No Internet"),
        ); // todo: change no internet string
      }
    } on DioException catch (dioError) {
      if (dioError.response?.statusCode == 401 ||
          dioError.response?.statusCode == 302) {
        // todo: handle session expired
      }
      return left(
        FailureResponse(false, dioError.response?.data["message"]),
      );
    } catch (error) {
      return left(
        FailureResponse(false, error.toString()),
      );
    }
  }

  Future<Either<FailureResponse, CommonResponse>> multipartRequest(
    String url,
    MethodType method,
    params,
  ) async {
    try {
      Response response;
      if (await CommonMethods.checkConnectivity()) {
        response = await _dio.post(
          url,
          data: params,
          options: Options(
            headers: {
              "Content-Type": "multipart/form-data",
            },
          ),
        );
        return right(
          CommonResponse.fromJson(response.data, (json) => json),
        );
      } else {
        return left(
          FailureResponse(false, "No Internet"),
        ); // todo: change no internet string
      }
    } on DioException catch (dioError) {
      if (dioError.response?.statusCode == 401 ||
          dioError.response?.statusCode == 302) {
        // todo: handle error
      }
      return left(
        FailureResponse(false, dioError.response?.data["message"]),
      );
    } catch (error) {
      return left(
        FailureResponse(false, error.toString()),
      );
    }
  }
}
