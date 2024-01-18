// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_methods_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentMethodsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(PaymentType paymentType) onTapPaymentType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(PaymentType paymentType)? onTapPaymentType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PaymentType paymentType)? onTapPaymentType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnTapPaymentType value) onTapPaymentType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnTapPaymentType value)? onTapPaymentType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnTapPaymentType value)? onTapPaymentType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodsEventCopyWith<$Res> {
  factory $PaymentMethodsEventCopyWith(
          PaymentMethodsEvent value, $Res Function(PaymentMethodsEvent) then) =
      _$PaymentMethodsEventCopyWithImpl<$Res, PaymentMethodsEvent>;
}

/// @nodoc
class _$PaymentMethodsEventCopyWithImpl<$Res, $Val extends PaymentMethodsEvent>
    implements $PaymentMethodsEventCopyWith<$Res> {
  _$PaymentMethodsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$PaymentMethodsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'PaymentMethodsEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(PaymentType paymentType) onTapPaymentType,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(PaymentType paymentType)? onTapPaymentType,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PaymentType paymentType)? onTapPaymentType,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnTapPaymentType value) onTapPaymentType,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnTapPaymentType value)? onTapPaymentType,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnTapPaymentType value)? onTapPaymentType,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PaymentMethodsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$OnTapPaymentTypeImplCopyWith<$Res> {
  factory _$$OnTapPaymentTypeImplCopyWith(_$OnTapPaymentTypeImpl value,
          $Res Function(_$OnTapPaymentTypeImpl) then) =
      __$$OnTapPaymentTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentType paymentType});

  $PaymentTypeCopyWith<$Res> get paymentType;
}

/// @nodoc
class __$$OnTapPaymentTypeImplCopyWithImpl<$Res>
    extends _$PaymentMethodsEventCopyWithImpl<$Res, _$OnTapPaymentTypeImpl>
    implements _$$OnTapPaymentTypeImplCopyWith<$Res> {
  __$$OnTapPaymentTypeImplCopyWithImpl(_$OnTapPaymentTypeImpl _value,
      $Res Function(_$OnTapPaymentTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentType = null,
  }) {
    return _then(_$OnTapPaymentTypeImpl(
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as PaymentType,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentTypeCopyWith<$Res> get paymentType {
    return $PaymentTypeCopyWith<$Res>(_value.paymentType, (value) {
      return _then(_value.copyWith(paymentType: value));
    });
  }
}

/// @nodoc

class _$OnTapPaymentTypeImpl implements _OnTapPaymentType {
  const _$OnTapPaymentTypeImpl({required this.paymentType});

  @override
  final PaymentType paymentType;

  @override
  String toString() {
    return 'PaymentMethodsEvent.onTapPaymentType(paymentType: $paymentType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnTapPaymentTypeImpl &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnTapPaymentTypeImplCopyWith<_$OnTapPaymentTypeImpl> get copyWith =>
      __$$OnTapPaymentTypeImplCopyWithImpl<_$OnTapPaymentTypeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(PaymentType paymentType) onTapPaymentType,
  }) {
    return onTapPaymentType(paymentType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(PaymentType paymentType)? onTapPaymentType,
  }) {
    return onTapPaymentType?.call(paymentType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PaymentType paymentType)? onTapPaymentType,
    required TResult orElse(),
  }) {
    if (onTapPaymentType != null) {
      return onTapPaymentType(paymentType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnTapPaymentType value) onTapPaymentType,
  }) {
    return onTapPaymentType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnTapPaymentType value)? onTapPaymentType,
  }) {
    return onTapPaymentType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnTapPaymentType value)? onTapPaymentType,
    required TResult orElse(),
  }) {
    if (onTapPaymentType != null) {
      return onTapPaymentType(this);
    }
    return orElse();
  }
}

abstract class _OnTapPaymentType implements PaymentMethodsEvent {
  const factory _OnTapPaymentType({required final PaymentType paymentType}) =
      _$OnTapPaymentTypeImpl;

  PaymentType get paymentType;
  @JsonKey(ignore: true)
  _$$OnTapPaymentTypeImplCopyWith<_$OnTapPaymentTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PaymentMethodsState {
  List<PaymentMethodModel> get paymentMethodList =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PaymentMethodModel> paymentMethodList)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PaymentMethodModel> paymentMethodList)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PaymentMethodModel> paymentMethodList)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentMethodsStateCopyWith<PaymentMethodsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodsStateCopyWith<$Res> {
  factory $PaymentMethodsStateCopyWith(
          PaymentMethodsState value, $Res Function(PaymentMethodsState) then) =
      _$PaymentMethodsStateCopyWithImpl<$Res, PaymentMethodsState>;
  @useResult
  $Res call({List<PaymentMethodModel> paymentMethodList});
}

/// @nodoc
class _$PaymentMethodsStateCopyWithImpl<$Res, $Val extends PaymentMethodsState>
    implements $PaymentMethodsStateCopyWith<$Res> {
  _$PaymentMethodsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMethodList = null,
  }) {
    return _then(_value.copyWith(
      paymentMethodList: null == paymentMethodList
          ? _value.paymentMethodList
          : paymentMethodList // ignore: cast_nullable_to_non_nullable
              as List<PaymentMethodModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $PaymentMethodsStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PaymentMethodModel> paymentMethodList});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PaymentMethodsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMethodList = null,
  }) {
    return _then(_$InitialImpl(
      paymentMethodList: null == paymentMethodList
          ? _value._paymentMethodList
          : paymentMethodList // ignore: cast_nullable_to_non_nullable
              as List<PaymentMethodModel>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {final List<PaymentMethodModel> paymentMethodList =
          const <PaymentMethodModel>[]})
      : _paymentMethodList = paymentMethodList;

  final List<PaymentMethodModel> _paymentMethodList;
  @override
  @JsonKey()
  List<PaymentMethodModel> get paymentMethodList {
    if (_paymentMethodList is EqualUnmodifiableListView)
      return _paymentMethodList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentMethodList);
  }

  @override
  String toString() {
    return 'PaymentMethodsState.initial(paymentMethodList: $paymentMethodList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality()
                .equals(other._paymentMethodList, _paymentMethodList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_paymentMethodList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PaymentMethodModel> paymentMethodList)
        initial,
  }) {
    return initial(paymentMethodList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PaymentMethodModel> paymentMethodList)? initial,
  }) {
    return initial?.call(paymentMethodList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PaymentMethodModel> paymentMethodList)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(paymentMethodList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PaymentMethodsState {
  const factory _Initial({final List<PaymentMethodModel> paymentMethodList}) =
      _$InitialImpl;

  @override
  List<PaymentMethodModel> get paymentMethodList;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
