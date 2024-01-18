// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tip_amount_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TipAmountModel {
  int get amount => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TipAmountModelCopyWith<TipAmountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TipAmountModelCopyWith<$Res> {
  factory $TipAmountModelCopyWith(
          TipAmountModel value, $Res Function(TipAmountModel) then) =
      _$TipAmountModelCopyWithImpl<$Res, TipAmountModel>;
  @useResult
  $Res call({int amount, bool isSelected});
}

/// @nodoc
class _$TipAmountModelCopyWithImpl<$Res, $Val extends TipAmountModel>
    implements $TipAmountModelCopyWith<$Res> {
  _$TipAmountModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? isSelected = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TipAmountModelImplCopyWith<$Res>
    implements $TipAmountModelCopyWith<$Res> {
  factory _$$TipAmountModelImplCopyWith(_$TipAmountModelImpl value,
          $Res Function(_$TipAmountModelImpl) then) =
      __$$TipAmountModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int amount, bool isSelected});
}

/// @nodoc
class __$$TipAmountModelImplCopyWithImpl<$Res>
    extends _$TipAmountModelCopyWithImpl<$Res, _$TipAmountModelImpl>
    implements _$$TipAmountModelImplCopyWith<$Res> {
  __$$TipAmountModelImplCopyWithImpl(
      _$TipAmountModelImpl _value, $Res Function(_$TipAmountModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? isSelected = null,
  }) {
    return _then(_$TipAmountModelImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TipAmountModelImpl implements _TipAmountModel {
  const _$TipAmountModelImpl({this.amount = 0, this.isSelected = false});

  @override
  @JsonKey()
  final int amount;
  @override
  @JsonKey()
  final bool isSelected;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TipAmountModelImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TipAmountModelImplCopyWith<_$TipAmountModelImpl> get copyWith =>
      __$$TipAmountModelImplCopyWithImpl<_$TipAmountModelImpl>(
          this, _$identity);
}

abstract class _TipAmountModel implements TipAmountModel {
  const factory _TipAmountModel({final int amount, final bool isSelected}) =
      _$TipAmountModelImpl;

  @override
  int get amount;
  @override
  bool get isSelected;
  @override
  @JsonKey(ignore: true)
  _$$TipAmountModelImplCopyWith<_$TipAmountModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
