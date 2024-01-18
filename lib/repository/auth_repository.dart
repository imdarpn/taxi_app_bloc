import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../core/enums/method_type.dart';
import '../core/models/common_response/common_response.dart';
import '../core/models/failure_response.dart';
import '../core/services/api_service/configs.dart';
import '../core/services/api_service/dio_client.dart';

abstract class AuthRepository {
  Future<Either<FailureResponse, CommonResponse>> getReviewsList({
    required int clinicId,
  });
}

@Injectable()
class AuthRepositoryImpl extends AuthRepository {
  final DioClient dioClient;

  AuthRepositoryImpl({required this.dioClient});

  @override
  Future<Either<FailureResponse, CommonResponse>> getReviewsList({
    required int clinicId,
  }) async {
    try {
      return await dioClient.request(
        "${ApiConstant.reviews}/$clinicId",
        MethodType.get,
        {},
      );
    } catch (e) {
      rethrow;
    }
  }
}
