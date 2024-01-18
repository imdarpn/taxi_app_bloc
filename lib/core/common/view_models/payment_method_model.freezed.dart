// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_method_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentMethodModel {
  String get paymentMethodTitle => throw _privateConstructorUsedError;
  List<PaymentType> get paymentTypeList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentMethodModelCopyWith<PaymentMethodModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodModelCopyWith<$Res> {
  factory $PaymentMethodModelCopyWith(
          PaymentMethodModel value, $Res Function(PaymentMethodModel) then) =
      _$PaymentMethodModelCopyWithImpl<$Res, PaymentMethodModel>;
  @useResult
  $Res call({String paymentMethodTitle, List<PaymentType> paymentTypeList});
}

/// @nodoc
class _$PaymentMethodModelCopyWithImpl<$Res, $Val extends PaymentMethodModel>
    implements $PaymentMethodModelCopyWith<$Res> {
  _$PaymentMethodModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMethodTitle = null,
    Object? paymentTypeList = null,
  }) {
    return _then(_value.copyWith(
      paymentMethodTitle: null == paymentMethodTitle
          ? _value.paymentMethodTitle
          : paymentMethodTitle // ignore: cast_nullable_to_non_nullable
              as String,
      paymentTypeList: null == paymentTypeList
          ? _value.paymentTypeList
          : paymentTypeList // ignore: cast_nullable_to_non_nullable
              as List<PaymentType>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentMethodModelImplCopyWith<$Res>
    implements $PaymentMethodModelCopyWith<$Res> {
  factory _$$PaymentMethodModelImplCopyWith(_$PaymentMethodModelImpl value,
          $Res Function(_$PaymentMethodModelImpl) then) =
      __$$PaymentMethodModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String paymentMethodTitle, List<PaymentType> paymentTypeList});
}

/// @nodoc
class __$$PaymentMethodModelImplCopyWithImpl<$Res>
    extends _$PaymentMethodModelCopyWithImpl<$Res, _$PaymentMethodModelImpl>
    implements _$$PaymentMethodModelImplCopyWith<$Res> {
  __$$PaymentMethodModelImplCopyWithImpl(_$PaymentMethodModelImpl _value,
      $Res Function(_$PaymentMethodModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMethodTitle = null,
    Object? paymentTypeList = null,
  }) {
    return _then(_$PaymentMethodModelImpl(
      paymentMethodTitle: null == paymentMethodTitle
          ? _value.paymentMethodTitle
          : paymentMethodTitle // ignore: cast_nullable_to_non_nullable
              as String,
      paymentTypeList: null == paymentTypeList
          ? _value._paymentTypeList
          : paymentTypeList // ignore: cast_nullable_to_non_nullable
              as List<PaymentType>,
    ));
  }
}

/// @nodoc

class _$PaymentMethodModelImpl implements _PaymentMethodModel {
  const _$PaymentMethodModelImpl(
      {this.paymentMethodTitle = "",
      final List<PaymentType> paymentTypeList = const <PaymentType>[]})
      : _paymentTypeList = paymentTypeList;

  @override
  @JsonKey()
  final String paymentMethodTitle;
  final List<PaymentType> _paymentTypeList;
  @override
  @JsonKey()
  List<PaymentType> get paymentTypeList {
    if (_paymentTypeList is EqualUnmodifiableListView) return _paymentTypeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentTypeList);
  }

  @override
  String toString() {
    return 'PaymentMethodModel(paymentMethodTitle: $paymentMethodTitle, paymentTypeList: $paymentTypeList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentMethodModelImpl &&
            (identical(other.paymentMethodTitle, paymentMethodTitle) ||
                other.paymentMethodTitle == paymentMethodTitle) &&
            const DeepCollectionEquality()
                .equals(other._paymentTypeList, _paymentTypeList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentMethodTitle,
      const DeepCollectionEquality().hash(_paymentTypeList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentMethodModelImplCopyWith<_$PaymentMethodModelImpl> get copyWith =>
      __$$PaymentMethodModelImplCopyWithImpl<_$PaymentMethodModelImpl>(
          this, _$identity);
}

abstract class _PaymentMethodModel implements PaymentMethodModel {
  const factory _PaymentMethodModel(
      {final String paymentMethodTitle,
      final List<PaymentType> paymentTypeList}) = _$PaymentMethodModelImpl;

  @override
  String get paymentMethodTitle;
  @override
  List<PaymentType> get paymentTypeList;
  @override
  @JsonKey(ignore: true)
  _$$PaymentMethodModelImplCopyWith<_$PaymentMethodModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PaymentType {
  String get paymentTileName => throw _privateConstructorUsedError;
  String get paymentTypeImage => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;
  bool get isReadOnly => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentTypeCopyWith<PaymentType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentTypeCopyWith<$Res> {
  factory $PaymentTypeCopyWith(
          PaymentType value, $Res Function(PaymentType) then) =
      _$PaymentTypeCopyWithImpl<$Res, PaymentType>;
  @useResult
  $Res call(
      {String paymentTileName,
      String paymentTypeImage,
      bool isSelected,
      bool isReadOnly});
}

/// @nodoc
class _$PaymentTypeCopyWithImpl<$Res, $Val extends PaymentType>
    implements $PaymentTypeCopyWith<$Res> {
  _$PaymentTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentTileName = null,
    Object? paymentTypeImage = null,
    Object? isSelected = null,
    Object? isReadOnly = null,
  }) {
    return _then(_value.copyWith(
      paymentTileName: null == paymentTileName
          ? _value.paymentTileName
          : paymentTileName // ignore: cast_nullable_to_non_nullable
              as String,
      paymentTypeImage: null == paymentTypeImage
          ? _value.paymentTypeImage
          : paymentTypeImage // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      isReadOnly: null == isReadOnly
          ? _value.isReadOnly
          : isReadOnly // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentTypeImplCopyWith<$Res>
    implements $PaymentTypeCopyWith<$Res> {
  factory _$$PaymentTypeImplCopyWith(
          _$PaymentTypeImpl value, $Res Function(_$PaymentTypeImpl) then) =
      __$$PaymentTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String paymentTileName,
      String paymentTypeImage,
      bool isSelected,
      bool isReadOnly});
}

/// @nodoc
class __$$PaymentTypeImplCopyWithImpl<$Res>
    extends _$PaymentTypeCopyWithImpl<$Res, _$PaymentTypeImpl>
    implements _$$PaymentTypeImplCopyWith<$Res> {
  __$$PaymentTypeImplCopyWithImpl(
      _$PaymentTypeImpl _value, $Res Function(_$PaymentTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentTileName = null,
    Object? paymentTypeImage = null,
    Object? isSelected = null,
    Object? isReadOnly = null,
  }) {
    return _then(_$PaymentTypeImpl(
      paymentTileName: null == paymentTileName
          ? _value.paymentTileName
          : paymentTileName // ignore: cast_nullable_to_non_nullable
              as String,
      paymentTypeImage: null == paymentTypeImage
          ? _value.paymentTypeImage
          : paymentTypeImage // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      isReadOnly: null == isReadOnly
          ? _value.isReadOnly
          : isReadOnly // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PaymentTypeImpl implements _PaymentType {
  const _$PaymentTypeImpl(
      {this.paymentTileName = "",
      this.paymentTypeImage = "",
      this.isSelected = false,
      this.isReadOnly = false});

  @override
  @JsonKey()
  final String paymentTileName;
  @override
  @JsonKey()
  final String paymentTypeImage;
  @override
  @JsonKey()
  final bool isSelected;
  @override
  @JsonKey()
  final bool isReadOnly;

  @override
  String toString() {
    return 'PaymentType(paymentTileName: $paymentTileName, paymentTypeImage: $paymentTypeImage, isSelected: $isSelected, isReadOnly: $isReadOnly)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentTypeImpl &&
            (identical(other.paymentTileName, paymentTileName) ||
                other.paymentTileName == paymentTileName) &&
            (identical(other.paymentTypeImage, paymentTypeImage) ||
                other.paymentTypeImage == paymentTypeImage) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected) &&
            (identical(other.isReadOnly, isReadOnly) ||
                other.isReadOnly == isReadOnly));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, paymentTileName, paymentTypeImage, isSelected, isReadOnly);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentTypeImplCopyWith<_$PaymentTypeImpl> get copyWith =>
      __$$PaymentTypeImplCopyWithImpl<_$PaymentTypeImpl>(this, _$identity);
}

abstract class _PaymentType implements PaymentType {
  const factory _PaymentType(
      {final String paymentTileName,
      final String paymentTypeImage,
      final bool isSelected,
      final bool isReadOnly}) = _$PaymentTypeImpl;

  @override
  String get paymentTileName;
  @override
  String get paymentTypeImage;
  @override
  bool get isSelected;
  @override
  bool get isReadOnly;
  @override
  @JsonKey(ignore: true)
  _$$PaymentTypeImplCopyWith<_$PaymentTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
