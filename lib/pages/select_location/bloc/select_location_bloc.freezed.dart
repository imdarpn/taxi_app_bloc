// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'select_location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SelectLocationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AddressModel> addressList) started,
    required TResult Function() addField,
    required TResult Function(int index) removeField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AddressModel> addressList)? started,
    TResult? Function()? addField,
    TResult? Function(int index)? removeField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AddressModel> addressList)? started,
    TResult Function()? addField,
    TResult Function(int index)? removeField,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddField value) addField,
    required TResult Function(_RemoveField value) removeField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddField value)? addField,
    TResult? Function(_RemoveField value)? removeField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddField value)? addField,
    TResult Function(_RemoveField value)? removeField,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectLocationEventCopyWith<$Res> {
  factory $SelectLocationEventCopyWith(
          SelectLocationEvent value, $Res Function(SelectLocationEvent) then) =
      _$SelectLocationEventCopyWithImpl<$Res, SelectLocationEvent>;
}

/// @nodoc
class _$SelectLocationEventCopyWithImpl<$Res, $Val extends SelectLocationEvent>
    implements $SelectLocationEventCopyWith<$Res> {
  _$SelectLocationEventCopyWithImpl(this._value, this._then);

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
  @useResult
  $Res call({List<AddressModel> addressList});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$SelectLocationEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressList = null,
  }) {
    return _then(_$StartedImpl(
      addressList: null == addressList
          ? _value._addressList
          : addressList // ignore: cast_nullable_to_non_nullable
              as List<AddressModel>,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl({required final List<AddressModel> addressList})
      : _addressList = addressList;

  final List<AddressModel> _addressList;
  @override
  List<AddressModel> get addressList {
    if (_addressList is EqualUnmodifiableListView) return _addressList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addressList);
  }

  @override
  String toString() {
    return 'SelectLocationEvent.started(addressList: $addressList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            const DeepCollectionEquality()
                .equals(other._addressList, _addressList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_addressList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AddressModel> addressList) started,
    required TResult Function() addField,
    required TResult Function(int index) removeField,
  }) {
    return started(addressList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AddressModel> addressList)? started,
    TResult? Function()? addField,
    TResult? Function(int index)? removeField,
  }) {
    return started?.call(addressList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AddressModel> addressList)? started,
    TResult Function()? addField,
    TResult Function(int index)? removeField,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(addressList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddField value) addField,
    required TResult Function(_RemoveField value) removeField,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddField value)? addField,
    TResult? Function(_RemoveField value)? removeField,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddField value)? addField,
    TResult Function(_RemoveField value)? removeField,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SelectLocationEvent {
  const factory _Started({required final List<AddressModel> addressList}) =
      _$StartedImpl;

  List<AddressModel> get addressList;
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddFieldImplCopyWith<$Res> {
  factory _$$AddFieldImplCopyWith(
          _$AddFieldImpl value, $Res Function(_$AddFieldImpl) then) =
      __$$AddFieldImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddFieldImplCopyWithImpl<$Res>
    extends _$SelectLocationEventCopyWithImpl<$Res, _$AddFieldImpl>
    implements _$$AddFieldImplCopyWith<$Res> {
  __$$AddFieldImplCopyWithImpl(
      _$AddFieldImpl _value, $Res Function(_$AddFieldImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddFieldImpl implements _AddField {
  const _$AddFieldImpl();

  @override
  String toString() {
    return 'SelectLocationEvent.addField()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddFieldImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AddressModel> addressList) started,
    required TResult Function() addField,
    required TResult Function(int index) removeField,
  }) {
    return addField();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AddressModel> addressList)? started,
    TResult? Function()? addField,
    TResult? Function(int index)? removeField,
  }) {
    return addField?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AddressModel> addressList)? started,
    TResult Function()? addField,
    TResult Function(int index)? removeField,
    required TResult orElse(),
  }) {
    if (addField != null) {
      return addField();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddField value) addField,
    required TResult Function(_RemoveField value) removeField,
  }) {
    return addField(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddField value)? addField,
    TResult? Function(_RemoveField value)? removeField,
  }) {
    return addField?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddField value)? addField,
    TResult Function(_RemoveField value)? removeField,
    required TResult orElse(),
  }) {
    if (addField != null) {
      return addField(this);
    }
    return orElse();
  }
}

abstract class _AddField implements SelectLocationEvent {
  const factory _AddField() = _$AddFieldImpl;
}

/// @nodoc
abstract class _$$RemoveFieldImplCopyWith<$Res> {
  factory _$$RemoveFieldImplCopyWith(
          _$RemoveFieldImpl value, $Res Function(_$RemoveFieldImpl) then) =
      __$$RemoveFieldImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$RemoveFieldImplCopyWithImpl<$Res>
    extends _$SelectLocationEventCopyWithImpl<$Res, _$RemoveFieldImpl>
    implements _$$RemoveFieldImplCopyWith<$Res> {
  __$$RemoveFieldImplCopyWithImpl(
      _$RemoveFieldImpl _value, $Res Function(_$RemoveFieldImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$RemoveFieldImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveFieldImpl implements _RemoveField {
  const _$RemoveFieldImpl({this.index = 0});

  @override
  @JsonKey()
  final int index;

  @override
  String toString() {
    return 'SelectLocationEvent.removeField(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFieldImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFieldImplCopyWith<_$RemoveFieldImpl> get copyWith =>
      __$$RemoveFieldImplCopyWithImpl<_$RemoveFieldImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AddressModel> addressList) started,
    required TResult Function() addField,
    required TResult Function(int index) removeField,
  }) {
    return removeField(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AddressModel> addressList)? started,
    TResult? Function()? addField,
    TResult? Function(int index)? removeField,
  }) {
    return removeField?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AddressModel> addressList)? started,
    TResult Function()? addField,
    TResult Function(int index)? removeField,
    required TResult orElse(),
  }) {
    if (removeField != null) {
      return removeField(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddField value) addField,
    required TResult Function(_RemoveField value) removeField,
  }) {
    return removeField(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddField value)? addField,
    TResult? Function(_RemoveField value)? removeField,
  }) {
    return removeField?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddField value)? addField,
    TResult Function(_RemoveField value)? removeField,
    required TResult orElse(),
  }) {
    if (removeField != null) {
      return removeField(this);
    }
    return orElse();
  }
}

abstract class _RemoveField implements SelectLocationEvent {
  const factory _RemoveField({final int index}) = _$RemoveFieldImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$RemoveFieldImplCopyWith<_$RemoveFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SelectLocationState {
  List<AddressModel> get addressModelList => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AddressModel> addressModelList) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AddressModel> addressModelList)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AddressModel> addressModelList)? initial,
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
  $SelectLocationStateCopyWith<SelectLocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectLocationStateCopyWith<$Res> {
  factory $SelectLocationStateCopyWith(
          SelectLocationState value, $Res Function(SelectLocationState) then) =
      _$SelectLocationStateCopyWithImpl<$Res, SelectLocationState>;
  @useResult
  $Res call({List<AddressModel> addressModelList});
}

/// @nodoc
class _$SelectLocationStateCopyWithImpl<$Res, $Val extends SelectLocationState>
    implements $SelectLocationStateCopyWith<$Res> {
  _$SelectLocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressModelList = null,
  }) {
    return _then(_value.copyWith(
      addressModelList: null == addressModelList
          ? _value.addressModelList
          : addressModelList // ignore: cast_nullable_to_non_nullable
              as List<AddressModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $SelectLocationStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AddressModel> addressModelList});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SelectLocationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressModelList = null,
  }) {
    return _then(_$InitialImpl(
      addressModelList: null == addressModelList
          ? _value._addressModelList
          : addressModelList // ignore: cast_nullable_to_non_nullable
              as List<AddressModel>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({final List<AddressModel> addressModelList = const []})
      : _addressModelList = addressModelList;

  final List<AddressModel> _addressModelList;
  @override
  @JsonKey()
  List<AddressModel> get addressModelList {
    if (_addressModelList is EqualUnmodifiableListView)
      return _addressModelList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addressModelList);
  }

  @override
  String toString() {
    return 'SelectLocationState.initial(addressModelList: $addressModelList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality()
                .equals(other._addressModelList, _addressModelList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_addressModelList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AddressModel> addressModelList) initial,
  }) {
    return initial(addressModelList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AddressModel> addressModelList)? initial,
  }) {
    return initial?.call(addressModelList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AddressModel> addressModelList)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(addressModelList);
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

abstract class _Initial implements SelectLocationState {
  const factory _Initial({final List<AddressModel> addressModelList}) =
      _$InitialImpl;

  @override
  List<AddressModel> get addressModelList;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
