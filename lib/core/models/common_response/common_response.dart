// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_response.freezed.dart';

part 'common_response.g.dart';

@Freezed(genericArgumentFactories: true)
class CommonResponse<T> with _$CommonResponse {
  const factory CommonResponse({
    @JsonKey(name: "code") @Default(0) int code,
    @JsonKey(name: "status") @Default(false) bool status,
    @JsonKey(name: "message") @Default("") String message,
    @JsonKey(name: "data") T? jsonData,
    @JsonKey(name: "bearer_token") @Default("") String bearerToken,
  }) = _CommonResponse;

  factory CommonResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$CommonResponseFromJson(json, fromJsonT);
}
