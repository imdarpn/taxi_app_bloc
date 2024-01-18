// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommonResponse<T> _$CommonResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _CommonResponse<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$CommonResponse<T> {
  @JsonKey(name: "code")
  int get code => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  T? get jsonData => throw _privateConstructorUsedError;
  @JsonKey(name: "bearer_token")
  String get bearerToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommonResponseCopyWith<T, CommonResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonResponseCopyWith<T, $Res> {
  factory $CommonResponseCopyWith(
          CommonResponse<T> value, $Res Function(CommonResponse<T>) then) =
      _$CommonResponseCopyWithImpl<T, $Res, CommonResponse<T>>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int code,
      @JsonKey(name: "status") bool status,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") T? jsonData,
      @JsonKey(name: "bearer_token") String bearerToken});
}

/// @nodoc
class _$CommonResponseCopyWithImpl<T, $Res, $Val extends CommonResponse<T>>
    implements $CommonResponseCopyWith<T, $Res> {
  _$CommonResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? status = null,
    Object? message = null,
    Object? jsonData = freezed,
    Object? bearerToken = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      jsonData: freezed == jsonData
          ? _value.jsonData
          : jsonData // ignore: cast_nullable_to_non_nullable
              as T?,
      bearerToken: null == bearerToken
          ? _value.bearerToken
          : bearerToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommonResponseImplCopyWith<T, $Res>
    implements $CommonResponseCopyWith<T, $Res> {
  factory _$$CommonResponseImplCopyWith(_$CommonResponseImpl<T> value,
          $Res Function(_$CommonResponseImpl<T>) then) =
      __$$CommonResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") int code,
      @JsonKey(name: "status") bool status,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") T? jsonData,
      @JsonKey(name: "bearer_token") String bearerToken});
}

/// @nodoc
class __$$CommonResponseImplCopyWithImpl<T, $Res>
    extends _$CommonResponseCopyWithImpl<T, $Res, _$CommonResponseImpl<T>>
    implements _$$CommonResponseImplCopyWith<T, $Res> {
  __$$CommonResponseImplCopyWithImpl(_$CommonResponseImpl<T> _value,
      $Res Function(_$CommonResponseImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? status = null,
    Object? message = null,
    Object? jsonData = freezed,
    Object? bearerToken = null,
  }) {
    return _then(_$CommonResponseImpl<T>(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      jsonData: freezed == jsonData
          ? _value.jsonData
          : jsonData // ignore: cast_nullable_to_non_nullable
              as T?,
      bearerToken: null == bearerToken
          ? _value.bearerToken
          : bearerToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$CommonResponseImpl<T> implements _CommonResponse<T> {
  const _$CommonResponseImpl(
      {@JsonKey(name: "code") this.code = 0,
      @JsonKey(name: "status") this.status = false,
      @JsonKey(name: "message") this.message = "",
      @JsonKey(name: "data") this.jsonData,
      @JsonKey(name: "bearer_token") this.bearerToken = ""});

  factory _$CommonResponseImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$CommonResponseImplFromJson(json, fromJsonT);

  @override
  @JsonKey(name: "code")
  final int code;
  @override
  @JsonKey(name: "status")
  final bool status;
  @override
  @JsonKey(name: "message")
  final String message;
  @override
  @JsonKey(name: "data")
  final T? jsonData;
  @override
  @JsonKey(name: "bearer_token")
  final String bearerToken;

  @override
  String toString() {
    return 'CommonResponse<$T>(code: $code, status: $status, message: $message, jsonData: $jsonData, bearerToken: $bearerToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommonResponseImpl<T> &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.jsonData, jsonData) &&
            (identical(other.bearerToken, bearerToken) ||
                other.bearerToken == bearerToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, status, message,
      const DeepCollectionEquality().hash(jsonData), bearerToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommonResponseImplCopyWith<T, _$CommonResponseImpl<T>> get copyWith =>
      __$$CommonResponseImplCopyWithImpl<T, _$CommonResponseImpl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$CommonResponseImplToJson<T>(this, toJsonT);
  }
}

abstract class _CommonResponse<T> implements CommonResponse<T> {
  const factory _CommonResponse(
          {@JsonKey(name: "code") final int code,
          @JsonKey(name: "status") final bool status,
          @JsonKey(name: "message") final String message,
          @JsonKey(name: "data") final T? jsonData,
          @JsonKey(name: "bearer_token") final String bearerToken}) =
      _$CommonResponseImpl<T>;

  factory _CommonResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$CommonResponseImpl<T>.fromJson;

  @override
  @JsonKey(name: "code")
  int get code;
  @override
  @JsonKey(name: "status")
  bool get status;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "data")
  T? get jsonData;
  @override
  @JsonKey(name: "bearer_token")
  String get bearerToken;
  @override
  @JsonKey(ignore: true)
  _$$CommonResponseImplCopyWith<T, _$CommonResponseImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
