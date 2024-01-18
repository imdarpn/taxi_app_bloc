// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ride_map_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RideMapEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AddressModel> addressList) started,
    required TResult Function(
            GoogleMapController googleMapController, bool isDark)
        mapCreated,
    required TResult Function(bool isDark) onMapStyleChanged,
    required TResult Function(RideViewStatus rideViewStatus) onStatusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AddressModel> addressList)? started,
    TResult? Function(GoogleMapController googleMapController, bool isDark)?
        mapCreated,
    TResult? Function(bool isDark)? onMapStyleChanged,
    TResult? Function(RideViewStatus rideViewStatus)? onStatusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AddressModel> addressList)? started,
    TResult Function(GoogleMapController googleMapController, bool isDark)?
        mapCreated,
    TResult Function(bool isDark)? onMapStyleChanged,
    TResult Function(RideViewStatus rideViewStatus)? onStatusChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_MapCreated value) mapCreated,
    required TResult Function(_OnMapStyleChanged value) onMapStyleChanged,
    required TResult Function(_OnStatusChanged value) onStatusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_MapCreated value)? mapCreated,
    TResult? Function(_OnMapStyleChanged value)? onMapStyleChanged,
    TResult? Function(_OnStatusChanged value)? onStatusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_MapCreated value)? mapCreated,
    TResult Function(_OnMapStyleChanged value)? onMapStyleChanged,
    TResult Function(_OnStatusChanged value)? onStatusChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RideMapEventCopyWith<$Res> {
  factory $RideMapEventCopyWith(
          RideMapEvent value, $Res Function(RideMapEvent) then) =
      _$RideMapEventCopyWithImpl<$Res, RideMapEvent>;
}

/// @nodoc
class _$RideMapEventCopyWithImpl<$Res, $Val extends RideMapEvent>
    implements $RideMapEventCopyWith<$Res> {
  _$RideMapEventCopyWithImpl(this._value, this._then);

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
    extends _$RideMapEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'RideMapEvent.started(addressList: $addressList)';
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
    required TResult Function(
            GoogleMapController googleMapController, bool isDark)
        mapCreated,
    required TResult Function(bool isDark) onMapStyleChanged,
    required TResult Function(RideViewStatus rideViewStatus) onStatusChanged,
  }) {
    return started(addressList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AddressModel> addressList)? started,
    TResult? Function(GoogleMapController googleMapController, bool isDark)?
        mapCreated,
    TResult? Function(bool isDark)? onMapStyleChanged,
    TResult? Function(RideViewStatus rideViewStatus)? onStatusChanged,
  }) {
    return started?.call(addressList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AddressModel> addressList)? started,
    TResult Function(GoogleMapController googleMapController, bool isDark)?
        mapCreated,
    TResult Function(bool isDark)? onMapStyleChanged,
    TResult Function(RideViewStatus rideViewStatus)? onStatusChanged,
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
    required TResult Function(_MapCreated value) mapCreated,
    required TResult Function(_OnMapStyleChanged value) onMapStyleChanged,
    required TResult Function(_OnStatusChanged value) onStatusChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_MapCreated value)? mapCreated,
    TResult? Function(_OnMapStyleChanged value)? onMapStyleChanged,
    TResult? Function(_OnStatusChanged value)? onStatusChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_MapCreated value)? mapCreated,
    TResult Function(_OnMapStyleChanged value)? onMapStyleChanged,
    TResult Function(_OnStatusChanged value)? onStatusChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements RideMapEvent {
  const factory _Started({required final List<AddressModel> addressList}) =
      _$StartedImpl;

  List<AddressModel> get addressList;
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MapCreatedImplCopyWith<$Res> {
  factory _$$MapCreatedImplCopyWith(
          _$MapCreatedImpl value, $Res Function(_$MapCreatedImpl) then) =
      __$$MapCreatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GoogleMapController googleMapController, bool isDark});
}

/// @nodoc
class __$$MapCreatedImplCopyWithImpl<$Res>
    extends _$RideMapEventCopyWithImpl<$Res, _$MapCreatedImpl>
    implements _$$MapCreatedImplCopyWith<$Res> {
  __$$MapCreatedImplCopyWithImpl(
      _$MapCreatedImpl _value, $Res Function(_$MapCreatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? googleMapController = null,
    Object? isDark = null,
  }) {
    return _then(_$MapCreatedImpl(
      googleMapController: null == googleMapController
          ? _value.googleMapController
          : googleMapController // ignore: cast_nullable_to_non_nullable
              as GoogleMapController,
      isDark: null == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MapCreatedImpl implements _MapCreated {
  const _$MapCreatedImpl(
      {required this.googleMapController, required this.isDark});

  @override
  final GoogleMapController googleMapController;
  @override
  final bool isDark;

  @override
  String toString() {
    return 'RideMapEvent.mapCreated(googleMapController: $googleMapController, isDark: $isDark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapCreatedImpl &&
            (identical(other.googleMapController, googleMapController) ||
                other.googleMapController == googleMapController) &&
            (identical(other.isDark, isDark) || other.isDark == isDark));
  }

  @override
  int get hashCode => Object.hash(runtimeType, googleMapController, isDark);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapCreatedImplCopyWith<_$MapCreatedImpl> get copyWith =>
      __$$MapCreatedImplCopyWithImpl<_$MapCreatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AddressModel> addressList) started,
    required TResult Function(
            GoogleMapController googleMapController, bool isDark)
        mapCreated,
    required TResult Function(bool isDark) onMapStyleChanged,
    required TResult Function(RideViewStatus rideViewStatus) onStatusChanged,
  }) {
    return mapCreated(googleMapController, isDark);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AddressModel> addressList)? started,
    TResult? Function(GoogleMapController googleMapController, bool isDark)?
        mapCreated,
    TResult? Function(bool isDark)? onMapStyleChanged,
    TResult? Function(RideViewStatus rideViewStatus)? onStatusChanged,
  }) {
    return mapCreated?.call(googleMapController, isDark);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AddressModel> addressList)? started,
    TResult Function(GoogleMapController googleMapController, bool isDark)?
        mapCreated,
    TResult Function(bool isDark)? onMapStyleChanged,
    TResult Function(RideViewStatus rideViewStatus)? onStatusChanged,
    required TResult orElse(),
  }) {
    if (mapCreated != null) {
      return mapCreated(googleMapController, isDark);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_MapCreated value) mapCreated,
    required TResult Function(_OnMapStyleChanged value) onMapStyleChanged,
    required TResult Function(_OnStatusChanged value) onStatusChanged,
  }) {
    return mapCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_MapCreated value)? mapCreated,
    TResult? Function(_OnMapStyleChanged value)? onMapStyleChanged,
    TResult? Function(_OnStatusChanged value)? onStatusChanged,
  }) {
    return mapCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_MapCreated value)? mapCreated,
    TResult Function(_OnMapStyleChanged value)? onMapStyleChanged,
    TResult Function(_OnStatusChanged value)? onStatusChanged,
    required TResult orElse(),
  }) {
    if (mapCreated != null) {
      return mapCreated(this);
    }
    return orElse();
  }
}

abstract class _MapCreated implements RideMapEvent {
  const factory _MapCreated(
      {required final GoogleMapController googleMapController,
      required final bool isDark}) = _$MapCreatedImpl;

  GoogleMapController get googleMapController;
  bool get isDark;
  @JsonKey(ignore: true)
  _$$MapCreatedImplCopyWith<_$MapCreatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnMapStyleChangedImplCopyWith<$Res> {
  factory _$$OnMapStyleChangedImplCopyWith(_$OnMapStyleChangedImpl value,
          $Res Function(_$OnMapStyleChangedImpl) then) =
      __$$OnMapStyleChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isDark});
}

/// @nodoc
class __$$OnMapStyleChangedImplCopyWithImpl<$Res>
    extends _$RideMapEventCopyWithImpl<$Res, _$OnMapStyleChangedImpl>
    implements _$$OnMapStyleChangedImplCopyWith<$Res> {
  __$$OnMapStyleChangedImplCopyWithImpl(_$OnMapStyleChangedImpl _value,
      $Res Function(_$OnMapStyleChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDark = null,
  }) {
    return _then(_$OnMapStyleChangedImpl(
      isDark: null == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OnMapStyleChangedImpl implements _OnMapStyleChanged {
  const _$OnMapStyleChangedImpl({required this.isDark});

  @override
  final bool isDark;

  @override
  String toString() {
    return 'RideMapEvent.onMapStyleChanged(isDark: $isDark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnMapStyleChangedImpl &&
            (identical(other.isDark, isDark) || other.isDark == isDark));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDark);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnMapStyleChangedImplCopyWith<_$OnMapStyleChangedImpl> get copyWith =>
      __$$OnMapStyleChangedImplCopyWithImpl<_$OnMapStyleChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AddressModel> addressList) started,
    required TResult Function(
            GoogleMapController googleMapController, bool isDark)
        mapCreated,
    required TResult Function(bool isDark) onMapStyleChanged,
    required TResult Function(RideViewStatus rideViewStatus) onStatusChanged,
  }) {
    return onMapStyleChanged(isDark);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AddressModel> addressList)? started,
    TResult? Function(GoogleMapController googleMapController, bool isDark)?
        mapCreated,
    TResult? Function(bool isDark)? onMapStyleChanged,
    TResult? Function(RideViewStatus rideViewStatus)? onStatusChanged,
  }) {
    return onMapStyleChanged?.call(isDark);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AddressModel> addressList)? started,
    TResult Function(GoogleMapController googleMapController, bool isDark)?
        mapCreated,
    TResult Function(bool isDark)? onMapStyleChanged,
    TResult Function(RideViewStatus rideViewStatus)? onStatusChanged,
    required TResult orElse(),
  }) {
    if (onMapStyleChanged != null) {
      return onMapStyleChanged(isDark);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_MapCreated value) mapCreated,
    required TResult Function(_OnMapStyleChanged value) onMapStyleChanged,
    required TResult Function(_OnStatusChanged value) onStatusChanged,
  }) {
    return onMapStyleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_MapCreated value)? mapCreated,
    TResult? Function(_OnMapStyleChanged value)? onMapStyleChanged,
    TResult? Function(_OnStatusChanged value)? onStatusChanged,
  }) {
    return onMapStyleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_MapCreated value)? mapCreated,
    TResult Function(_OnMapStyleChanged value)? onMapStyleChanged,
    TResult Function(_OnStatusChanged value)? onStatusChanged,
    required TResult orElse(),
  }) {
    if (onMapStyleChanged != null) {
      return onMapStyleChanged(this);
    }
    return orElse();
  }
}

abstract class _OnMapStyleChanged implements RideMapEvent {
  const factory _OnMapStyleChanged({required final bool isDark}) =
      _$OnMapStyleChangedImpl;

  bool get isDark;
  @JsonKey(ignore: true)
  _$$OnMapStyleChangedImplCopyWith<_$OnMapStyleChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnStatusChangedImplCopyWith<$Res> {
  factory _$$OnStatusChangedImplCopyWith(_$OnStatusChangedImpl value,
          $Res Function(_$OnStatusChangedImpl) then) =
      __$$OnStatusChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RideViewStatus rideViewStatus});
}

/// @nodoc
class __$$OnStatusChangedImplCopyWithImpl<$Res>
    extends _$RideMapEventCopyWithImpl<$Res, _$OnStatusChangedImpl>
    implements _$$OnStatusChangedImplCopyWith<$Res> {
  __$$OnStatusChangedImplCopyWithImpl(
      _$OnStatusChangedImpl _value, $Res Function(_$OnStatusChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rideViewStatus = null,
  }) {
    return _then(_$OnStatusChangedImpl(
      rideViewStatus: null == rideViewStatus
          ? _value.rideViewStatus
          : rideViewStatus // ignore: cast_nullable_to_non_nullable
              as RideViewStatus,
    ));
  }
}

/// @nodoc

class _$OnStatusChangedImpl implements _OnStatusChanged {
  const _$OnStatusChangedImpl({required this.rideViewStatus});

  @override
  final RideViewStatus rideViewStatus;

  @override
  String toString() {
    return 'RideMapEvent.onStatusChanged(rideViewStatus: $rideViewStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnStatusChangedImpl &&
            (identical(other.rideViewStatus, rideViewStatus) ||
                other.rideViewStatus == rideViewStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rideViewStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnStatusChangedImplCopyWith<_$OnStatusChangedImpl> get copyWith =>
      __$$OnStatusChangedImplCopyWithImpl<_$OnStatusChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AddressModel> addressList) started,
    required TResult Function(
            GoogleMapController googleMapController, bool isDark)
        mapCreated,
    required TResult Function(bool isDark) onMapStyleChanged,
    required TResult Function(RideViewStatus rideViewStatus) onStatusChanged,
  }) {
    return onStatusChanged(rideViewStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AddressModel> addressList)? started,
    TResult? Function(GoogleMapController googleMapController, bool isDark)?
        mapCreated,
    TResult? Function(bool isDark)? onMapStyleChanged,
    TResult? Function(RideViewStatus rideViewStatus)? onStatusChanged,
  }) {
    return onStatusChanged?.call(rideViewStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AddressModel> addressList)? started,
    TResult Function(GoogleMapController googleMapController, bool isDark)?
        mapCreated,
    TResult Function(bool isDark)? onMapStyleChanged,
    TResult Function(RideViewStatus rideViewStatus)? onStatusChanged,
    required TResult orElse(),
  }) {
    if (onStatusChanged != null) {
      return onStatusChanged(rideViewStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_MapCreated value) mapCreated,
    required TResult Function(_OnMapStyleChanged value) onMapStyleChanged,
    required TResult Function(_OnStatusChanged value) onStatusChanged,
  }) {
    return onStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_MapCreated value)? mapCreated,
    TResult? Function(_OnMapStyleChanged value)? onMapStyleChanged,
    TResult? Function(_OnStatusChanged value)? onStatusChanged,
  }) {
    return onStatusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_MapCreated value)? mapCreated,
    TResult Function(_OnMapStyleChanged value)? onMapStyleChanged,
    TResult Function(_OnStatusChanged value)? onStatusChanged,
    required TResult orElse(),
  }) {
    if (onStatusChanged != null) {
      return onStatusChanged(this);
    }
    return orElse();
  }
}

abstract class _OnStatusChanged implements RideMapEvent {
  const factory _OnStatusChanged(
      {required final RideViewStatus rideViewStatus}) = _$OnStatusChangedImpl;

  RideViewStatus get rideViewStatus;
  @JsonKey(ignore: true)
  _$$OnStatusChangedImplCopyWith<_$OnStatusChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RideMapState {
  RideViewStatus get rideViewStatus => throw _privateConstructorUsedError;
  LatLng get initialLatLng => throw _privateConstructorUsedError;
  GoogleMapController? get googleMapController =>
      throw _privateConstructorUsedError;
  List<AddressModel> get addressList => throw _privateConstructorUsedError;
  Set<Marker> get markers => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RideViewStatus rideViewStatus,
            LatLng initialLatLng,
            GoogleMapController? googleMapController,
            List<AddressModel> addressList,
            Set<Marker> markers)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            RideViewStatus rideViewStatus,
            LatLng initialLatLng,
            GoogleMapController? googleMapController,
            List<AddressModel> addressList,
            Set<Marker> markers)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            RideViewStatus rideViewStatus,
            LatLng initialLatLng,
            GoogleMapController? googleMapController,
            List<AddressModel> addressList,
            Set<Marker> markers)?
        initial,
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
  $RideMapStateCopyWith<RideMapState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RideMapStateCopyWith<$Res> {
  factory $RideMapStateCopyWith(
          RideMapState value, $Res Function(RideMapState) then) =
      _$RideMapStateCopyWithImpl<$Res, RideMapState>;
  @useResult
  $Res call(
      {RideViewStatus rideViewStatus,
      LatLng initialLatLng,
      GoogleMapController? googleMapController,
      List<AddressModel> addressList,
      Set<Marker> markers});
}

/// @nodoc
class _$RideMapStateCopyWithImpl<$Res, $Val extends RideMapState>
    implements $RideMapStateCopyWith<$Res> {
  _$RideMapStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rideViewStatus = null,
    Object? initialLatLng = null,
    Object? googleMapController = freezed,
    Object? addressList = null,
    Object? markers = null,
  }) {
    return _then(_value.copyWith(
      rideViewStatus: null == rideViewStatus
          ? _value.rideViewStatus
          : rideViewStatus // ignore: cast_nullable_to_non_nullable
              as RideViewStatus,
      initialLatLng: null == initialLatLng
          ? _value.initialLatLng
          : initialLatLng // ignore: cast_nullable_to_non_nullable
              as LatLng,
      googleMapController: freezed == googleMapController
          ? _value.googleMapController
          : googleMapController // ignore: cast_nullable_to_non_nullable
              as GoogleMapController?,
      addressList: null == addressList
          ? _value.addressList
          : addressList // ignore: cast_nullable_to_non_nullable
              as List<AddressModel>,
      markers: null == markers
          ? _value.markers
          : markers // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $RideMapStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RideViewStatus rideViewStatus,
      LatLng initialLatLng,
      GoogleMapController? googleMapController,
      List<AddressModel> addressList,
      Set<Marker> markers});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$RideMapStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rideViewStatus = null,
    Object? initialLatLng = null,
    Object? googleMapController = freezed,
    Object? addressList = null,
    Object? markers = null,
  }) {
    return _then(_$InitialImpl(
      rideViewStatus: null == rideViewStatus
          ? _value.rideViewStatus
          : rideViewStatus // ignore: cast_nullable_to_non_nullable
              as RideViewStatus,
      initialLatLng: null == initialLatLng
          ? _value.initialLatLng
          : initialLatLng // ignore: cast_nullable_to_non_nullable
              as LatLng,
      googleMapController: freezed == googleMapController
          ? _value.googleMapController
          : googleMapController // ignore: cast_nullable_to_non_nullable
              as GoogleMapController?,
      addressList: null == addressList
          ? _value._addressList
          : addressList // ignore: cast_nullable_to_non_nullable
              as List<AddressModel>,
      markers: null == markers
          ? _value._markers
          : markers // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.rideViewStatus = RideViewStatus.selectRide,
      this.initialLatLng = const LatLng(20.593683, 78.962883),
      this.googleMapController,
      final List<AddressModel> addressList = const [],
      final Set<Marker> markers = const <Marker>{}})
      : _addressList = addressList,
        _markers = markers;

  @override
  @JsonKey()
  final RideViewStatus rideViewStatus;
  @override
  @JsonKey()
  final LatLng initialLatLng;
  @override
  final GoogleMapController? googleMapController;
  final List<AddressModel> _addressList;
  @override
  @JsonKey()
  List<AddressModel> get addressList {
    if (_addressList is EqualUnmodifiableListView) return _addressList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addressList);
  }

  final Set<Marker> _markers;
  @override
  @JsonKey()
  Set<Marker> get markers {
    if (_markers is EqualUnmodifiableSetView) return _markers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_markers);
  }

  @override
  String toString() {
    return 'RideMapState.initial(rideViewStatus: $rideViewStatus, initialLatLng: $initialLatLng, googleMapController: $googleMapController, addressList: $addressList, markers: $markers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.rideViewStatus, rideViewStatus) ||
                other.rideViewStatus == rideViewStatus) &&
            (identical(other.initialLatLng, initialLatLng) ||
                other.initialLatLng == initialLatLng) &&
            (identical(other.googleMapController, googleMapController) ||
                other.googleMapController == googleMapController) &&
            const DeepCollectionEquality()
                .equals(other._addressList, _addressList) &&
            const DeepCollectionEquality().equals(other._markers, _markers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      rideViewStatus,
      initialLatLng,
      googleMapController,
      const DeepCollectionEquality().hash(_addressList),
      const DeepCollectionEquality().hash(_markers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RideViewStatus rideViewStatus,
            LatLng initialLatLng,
            GoogleMapController? googleMapController,
            List<AddressModel> addressList,
            Set<Marker> markers)
        initial,
  }) {
    return initial(rideViewStatus, initialLatLng, googleMapController,
        addressList, markers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            RideViewStatus rideViewStatus,
            LatLng initialLatLng,
            GoogleMapController? googleMapController,
            List<AddressModel> addressList,
            Set<Marker> markers)?
        initial,
  }) {
    return initial?.call(rideViewStatus, initialLatLng, googleMapController,
        addressList, markers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            RideViewStatus rideViewStatus,
            LatLng initialLatLng,
            GoogleMapController? googleMapController,
            List<AddressModel> addressList,
            Set<Marker> markers)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(rideViewStatus, initialLatLng, googleMapController,
          addressList, markers);
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

abstract class _Initial implements RideMapState {
  const factory _Initial(
      {final RideViewStatus rideViewStatus,
      final LatLng initialLatLng,
      final GoogleMapController? googleMapController,
      final List<AddressModel> addressList,
      final Set<Marker> markers}) = _$InitialImpl;

  @override
  RideViewStatus get rideViewStatus;
  @override
  LatLng get initialLatLng;
  @override
  GoogleMapController? get googleMapController;
  @override
  List<AddressModel> get addressList;
  @override
  Set<Marker> get markers;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
