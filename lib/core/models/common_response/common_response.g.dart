// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommonResponseImpl<T> _$$CommonResponseImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$CommonResponseImpl<T>(
      code: json['code'] as int? ?? 0,
      status: json['status'] as bool? ?? false,
      message: json['message'] as String? ?? "",
      jsonData: _$nullableGenericFromJson(json['data'], fromJsonT),
      bearerToken: json['bearer_token'] as String? ?? "",
    );

Map<String, dynamic> _$$CommonResponseImplToJson<T>(
  _$CommonResponseImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'message': instance.message,
      'data': _$nullableGenericToJson(instance.jsonData, toJsonT),
      'bearer_token': instance.bearerToken,
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
