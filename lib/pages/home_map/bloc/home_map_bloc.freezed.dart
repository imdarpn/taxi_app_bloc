// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_map_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeMapEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            GoogleMapController googleMapController, bool isDark)
        mapCreated,
    required TResult Function(CameraPosition position) onCameraMove,
    required TResult Function() onCameraIdle,
    required TResult Function() onCurrentLocation,
    required TResult Function(bool isDark) onMapStyleChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GoogleMapController googleMapController, bool isDark)?
        mapCreated,
    TResult? Function(CameraPosition position)? onCameraMove,
    TResult? Function()? onCameraIdle,
    TResult? Function()? onCurrentLocation,
    TResult? Function(bool isDark)? onMapStyleChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GoogleMapController googleMapController, bool isDark)?
        mapCreated,
    TResult Function(CameraPosition position)? onCameraMove,
    TResult Function()? onCameraIdle,
    TResult Function()? onCurrentLocation,
    TResult Function(bool isDark)? onMapStyleChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapStarted value) started,
    required TResult Function(_MapCreated value) mapCreated,
    required TResult Function(_OnCameraMove value) onCameraMove,
    required TResult Function(_OnCameraIdle value) onCameraIdle,
    required TResult Function(_OnCurrentLocation value) onCurrentLocation,
    required TResult Function(_OnMapStyleChanged value) onMapStyleChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MapStarted value)? started,
    TResult? Function(_MapCreated value)? mapCreated,
    TResult? Function(_OnCameraMove value)? onCameraMove,
    TResult? Function(_OnCameraIdle value)? onCameraIdle,
    TResult? Function(_OnCurrentLocation value)? onCurrentLocation,
    TResult? Function(_OnMapStyleChanged value)? onMapStyleChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MapStarted value)? started,
    TResult Function(_MapCreated value)? mapCreated,
    TResult Function(_OnCameraMove value)? onCameraMove,
    TResult Function(_OnCameraIdle value)? onCameraIdle,
    TResult Function(_OnCurrentLocation value)? onCurrentLocation,
    TResult Function(_OnMapStyleChanged value)? onMapStyleChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeMapEventCopyWith<$Res> {
  factory $HomeMapEventCopyWith(
          HomeMapEvent value, $Res Function(HomeMapEvent) then) =
      _$HomeMapEventCopyWithImpl<$Res, HomeMapEvent>;
}

/// @nodoc
class _$HomeMapEventCopyWithImpl<$Res, $Val extends HomeMapEvent>
    implements $HomeMapEventCopyWith<$Res> {
  _$HomeMapEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MapStartedImplCopyWith<$Res> {
  factory _$$MapStartedImplCopyWith(
          _$MapStartedImpl value, $Res Function(_$MapStartedImpl) then) =
      __$$MapStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MapStartedImplCopyWithImpl<$Res>
    extends _$HomeMapEventCopyWithImpl<$Res, _$MapStartedImpl>
    implements _$$MapStartedImplCopyWith<$Res> {
  __$$MapStartedImplCopyWithImpl(
      _$MapStartedImpl _value, $Res Function(_$MapStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MapStartedImpl implements _MapStarted {
  const _$MapStartedImpl();

  @override
  String toString() {
    return 'HomeMapEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MapStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            GoogleMapController googleMapController, bool isDark)
        mapCreated,
    required TResult Function(CameraPosition position) onCameraMove,
    required TResult Function() onCameraIdle,
    required TResult Function() onCurrentLocation,
    required TResult Function(bool isDark) onMapStyleChanged,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GoogleMapController googleMapController, bool isDark)?
        mapCreated,
    TResult? Function(CameraPosition position)? onCameraMove,
    TResult? Function()? onCameraIdle,
    TResult? Function()? onCurrentLocation,
    TResult? Function(bool isDark)? onMapStyleChanged,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GoogleMapController googleMapController, bool isDark)?
        mapCreated,
    TResult Function(CameraPosition position)? onCameraMove,
    TResult Function()? onCameraIdle,
    TResult Function()? onCurrentLocation,
    TResult Function(bool isDark)? onMapStyleChanged,
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
    required TResult Function(_MapStarted value) started,
    required TResult Function(_MapCreated value) mapCreated,
    required TResult Function(_OnCameraMove value) onCameraMove,
    required TResult Function(_OnCameraIdle value) onCameraIdle,
    required TResult Function(_OnCurrentLocation value) onCurrentLocation,
    required TResult Function(_OnMapStyleChanged value) onMapStyleChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MapStarted value)? started,
    TResult? Function(_MapCreated value)? mapCreated,
    TResult? Function(_OnCameraMove value)? onCameraMove,
    TResult? Function(_OnCameraIdle value)? onCameraIdle,
    TResult? Function(_OnCurrentLocation value)? onCurrentLocation,
    TResult? Function(_OnMapStyleChanged value)? onMapStyleChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MapStarted value)? started,
    TResult Function(_MapCreated value)? mapCreated,
    TResult Function(_OnCameraMove value)? onCameraMove,
    TResult Function(_OnCameraIdle value)? onCameraIdle,
    TResult Function(_OnCurrentLocation value)? onCurrentLocation,
    TResult Function(_OnMapStyleChanged value)? onMapStyleChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _MapStarted implements HomeMapEvent {
  const factory _MapStarted() = _$MapStartedImpl;
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
    extends _$HomeMapEventCopyWithImpl<$Res, _$MapCreatedImpl>
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
    return 'HomeMapEvent.mapCreated(googleMapController: $googleMapController, isDark: $isDark)';
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
    required TResult Function() started,
    required TResult Function(
            GoogleMapController googleMapController, bool isDark)
        mapCreated,
    required TResult Function(CameraPosition position) onCameraMove,
    required TResult Function() onCameraIdle,
    required TResult Function() onCurrentLocation,
    required TResult Function(bool isDark) onMapStyleChanged,
  }) {
    return mapCreated(googleMapController, isDark);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GoogleMapController googleMapController, bool isDark)?
        mapCreated,
    TResult? Function(CameraPosition position)? onCameraMove,
    TResult? Function()? onCameraIdle,
    TResult? Function()? onCurrentLocation,
    TResult? Function(bool isDark)? onMapStyleChanged,
  }) {
    return mapCreated?.call(googleMapController, isDark);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GoogleMapController googleMapController, bool isDark)?
        mapCreated,
    TResult Function(CameraPosition position)? onCameraMove,
    TResult Function()? onCameraIdle,
    TResult Function()? onCurrentLocation,
    TResult Function(bool isDark)? onMapStyleChanged,
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
    required TResult Function(_MapStarted value) started,
    required TResult Function(_MapCreated value) mapCreated,
    required TResult Function(_OnCameraMove value) onCameraMove,
    required TResult Function(_OnCameraIdle value) onCameraIdle,
    required TResult Function(_OnCurrentLocation value) onCurrentLocation,
    required TResult Function(_OnMapStyleChanged value) onMapStyleChanged,
  }) {
    return mapCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MapStarted value)? started,
    TResult? Function(_MapCreated value)? mapCreated,
    TResult? Function(_OnCameraMove value)? onCameraMove,
    TResult? Function(_OnCameraIdle value)? onCameraIdle,
    TResult? Function(_OnCurrentLocation value)? onCurrentLocation,
    TResult? Function(_OnMapStyleChanged value)? onMapStyleChanged,
  }) {
    return mapCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MapStarted value)? started,
    TResult Function(_MapCreated value)? mapCreated,
    TResult Function(_OnCameraMove value)? onCameraMove,
    TResult Function(_OnCameraIdle value)? onCameraIdle,
    TResult Function(_OnCurrentLocation value)? onCurrentLocation,
    TResult Function(_OnMapStyleChanged value)? onMapStyleChanged,
    required TResult orElse(),
  }) {
    if (mapCreated != null) {
      return mapCreated(this);
    }
    return orElse();
  }
}

abstract class _MapCreated implements HomeMapEvent {
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
abstract class _$$OnCameraMoveImplCopyWith<$Res> {
  factory _$$OnCameraMoveImplCopyWith(
          _$OnCameraMoveImpl value, $Res Function(_$OnCameraMoveImpl) then) =
      __$$OnCameraMoveImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CameraPosition position});
}

/// @nodoc
class __$$OnCameraMoveImplCopyWithImpl<$Res>
    extends _$HomeMapEventCopyWithImpl<$Res, _$OnCameraMoveImpl>
    implements _$$OnCameraMoveImplCopyWith<$Res> {
  __$$OnCameraMoveImplCopyWithImpl(
      _$OnCameraMoveImpl _value, $Res Function(_$OnCameraMoveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
  }) {
    return _then(_$OnCameraMoveImpl(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as CameraPosition,
    ));
  }
}

/// @nodoc

class _$OnCameraMoveImpl implements _OnCameraMove {
  const _$OnCameraMoveImpl({required this.position});

  @override
  final CameraPosition position;

  @override
  String toString() {
    return 'HomeMapEvent.onCameraMove(position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnCameraMoveImpl &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnCameraMoveImplCopyWith<_$OnCameraMoveImpl> get copyWith =>
      __$$OnCameraMoveImplCopyWithImpl<_$OnCameraMoveImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            GoogleMapController googleMapController, bool isDark)
        mapCreated,
    required TResult Function(CameraPosition position) onCameraMove,
    required TResult Function() onCameraIdle,
    required TResult Function() onCurrentLocation,
    required TResult Function(bool isDark) onMapStyleChanged,
  }) {
    return onCameraMove(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GoogleMapController googleMapController, bool isDark)?
        mapCreated,
    TResult? Function(CameraPosition position)? onCameraMove,
    TResult? Function()? onCameraIdle,
    TResult? Function()? onCurrentLocation,
    TResult? Function(bool isDark)? onMapStyleChanged,
  }) {
    return onCameraMove?.call(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GoogleMapController googleMapController, bool isDark)?
        mapCreated,
    TResult Function(CameraPosition position)? onCameraMove,
    TResult Function()? onCameraIdle,
    TResult Function()? onCurrentLocation,
    TResult Function(bool isDark)? onMapStyleChanged,
    required TResult orElse(),
  }) {
    if (onCameraMove != null) {
      return onCameraMove(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapStarted value) started,
    required TResult Function(_MapCreated value) mapCreated,
    required TResult Function(_OnCameraMove value) onCameraMove,
    required TResult Function(_OnCameraIdle value) onCameraIdle,
    required TResult Function(_OnCurrentLocation value) onCurrentLocation,
    required TResult Function(_OnMapStyleChanged value) onMapStyleChanged,
  }) {
    return onCameraMove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MapStarted value)? started,
    TResult? Function(_MapCreated value)? mapCreated,
    TResult? Function(_OnCameraMove value)? onCameraMove,
    TResult? Function(_OnCameraIdle value)? onCameraIdle,
    TResult? Function(_OnCurrentLocation value)? onCurrentLocation,
    TResult? Function(_OnMapStyleChanged value)? onMapStyleChanged,
  }) {
    return onCameraMove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MapStarted value)? started,
    TResult Function(_MapCreated value)? mapCreated,
    TResult Function(_OnCameraMove value)? onCameraMove,
    TResult Function(_OnCameraIdle value)? onCameraIdle,
    TResult Function(_OnCurrentLocation value)? onCurrentLocation,
    TResult Function(_OnMapStyleChanged value)? onMapStyleChanged,
    required TResult orElse(),
  }) {
    if (onCameraMove != null) {
      return onCameraMove(this);
    }
    return orElse();
  }
}

abstract class _OnCameraMove implements HomeMapEvent {
  const factory _OnCameraMove({required final CameraPosition position}) =
      _$OnCameraMoveImpl;

  CameraPosition get position;
  @JsonKey(ignore: true)
  _$$OnCameraMoveImplCopyWith<_$OnCameraMoveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnCameraIdleImplCopyWith<$Res> {
  factory _$$OnCameraIdleImplCopyWith(
          _$OnCameraIdleImpl value, $Res Function(_$OnCameraIdleImpl) then) =
      __$$OnCameraIdleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnCameraIdleImplCopyWithImpl<$Res>
    extends _$HomeMapEventCopyWithImpl<$Res, _$OnCameraIdleImpl>
    implements _$$OnCameraIdleImplCopyWith<$Res> {
  __$$OnCameraIdleImplCopyWithImpl(
      _$OnCameraIdleImpl _value, $Res Function(_$OnCameraIdleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnCameraIdleImpl implements _OnCameraIdle {
  const _$OnCameraIdleImpl();

  @override
  String toString() {
    return 'HomeMapEvent.onCameraIdle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnCameraIdleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            GoogleMapController googleMapController, bool isDark)
        mapCreated,
    required TResult Function(CameraPosition position) onCameraMove,
    required TResult Function() onCameraIdle,
    required TResult Function() onCurrentLocation,
    required TResult Function(bool isDark) onMapStyleChanged,
  }) {
    return onCameraIdle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GoogleMapController googleMapController, bool isDark)?
        mapCreated,
    TResult? Function(CameraPosition position)? onCameraMove,
    TResult? Function()? onCameraIdle,
    TResult? Function()? onCurrentLocation,
    TResult? Function(bool isDark)? onMapStyleChanged,
  }) {
    return onCameraIdle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GoogleMapController googleMapController, bool isDark)?
        mapCreated,
    TResult Function(CameraPosition position)? onCameraMove,
    TResult Function()? onCameraIdle,
    TResult Function()? onCurrentLocation,
    TResult Function(bool isDark)? onMapStyleChanged,
    required TResult orElse(),
  }) {
    if (onCameraIdle != null) {
      return onCameraIdle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapStarted value) started,
    required TResult Function(_MapCreated value) mapCreated,
    required TResult Function(_OnCameraMove value) onCameraMove,
    required TResult Function(_OnCameraIdle value) onCameraIdle,
    required TResult Function(_OnCurrentLocation value) onCurrentLocation,
    required TResult Function(_OnMapStyleChanged value) onMapStyleChanged,
  }) {
    return onCameraIdle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MapStarted value)? started,
    TResult? Function(_MapCreated value)? mapCreated,
    TResult? Function(_OnCameraMove value)? onCameraMove,
    TResult? Function(_OnCameraIdle value)? onCameraIdle,
    TResult? Function(_OnCurrentLocation value)? onCurrentLocation,
    TResult? Function(_OnMapStyleChanged value)? onMapStyleChanged,
  }) {
    return onCameraIdle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MapStarted value)? started,
    TResult Function(_MapCreated value)? mapCreated,
    TResult Function(_OnCameraMove value)? onCameraMove,
    TResult Function(_OnCameraIdle value)? onCameraIdle,
    TResult Function(_OnCurrentLocation value)? onCurrentLocation,
    TResult Function(_OnMapStyleChanged value)? onMapStyleChanged,
    required TResult orElse(),
  }) {
    if (onCameraIdle != null) {
      return onCameraIdle(this);
    }
    return orElse();
  }
}

abstract class _OnCameraIdle implements HomeMapEvent {
  const factory _OnCameraIdle() = _$OnCameraIdleImpl;
}

/// @nodoc
abstract class _$$OnCurrentLocationImplCopyWith<$Res> {
  factory _$$OnCurrentLocationImplCopyWith(_$OnCurrentLocationImpl value,
          $Res Function(_$OnCurrentLocationImpl) then) =
      __$$OnCurrentLocationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnCurrentLocationImplCopyWithImpl<$Res>
    extends _$HomeMapEventCopyWithImpl<$Res, _$OnCurrentLocationImpl>
    implements _$$OnCurrentLocationImplCopyWith<$Res> {
  __$$OnCurrentLocationImplCopyWithImpl(_$OnCurrentLocationImpl _value,
      $Res Function(_$OnCurrentLocationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnCurrentLocationImpl implements _OnCurrentLocation {
  const _$OnCurrentLocationImpl();

  @override
  String toString() {
    return 'HomeMapEvent.onCurrentLocation()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnCurrentLocationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            GoogleMapController googleMapController, bool isDark)
        mapCreated,
    required TResult Function(CameraPosition position) onCameraMove,
    required TResult Function() onCameraIdle,
    required TResult Function() onCurrentLocation,
    required TResult Function(bool isDark) onMapStyleChanged,
  }) {
    return onCurrentLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GoogleMapController googleMapController, bool isDark)?
        mapCreated,
    TResult? Function(CameraPosition position)? onCameraMove,
    TResult? Function()? onCameraIdle,
    TResult? Function()? onCurrentLocation,
    TResult? Function(bool isDark)? onMapStyleChanged,
  }) {
    return onCurrentLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GoogleMapController googleMapController, bool isDark)?
        mapCreated,
    TResult Function(CameraPosition position)? onCameraMove,
    TResult Function()? onCameraIdle,
    TResult Function()? onCurrentLocation,
    TResult Function(bool isDark)? onMapStyleChanged,
    required TResult orElse(),
  }) {
    if (onCurrentLocation != null) {
      return onCurrentLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapStarted value) started,
    required TResult Function(_MapCreated value) mapCreated,
    required TResult Function(_OnCameraMove value) onCameraMove,
    required TResult Function(_OnCameraIdle value) onCameraIdle,
    required TResult Function(_OnCurrentLocation value) onCurrentLocation,
    required TResult Function(_OnMapStyleChanged value) onMapStyleChanged,
  }) {
    return onCurrentLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MapStarted value)? started,
    TResult? Function(_MapCreated value)? mapCreated,
    TResult? Function(_OnCameraMove value)? onCameraMove,
    TResult? Function(_OnCameraIdle value)? onCameraIdle,
    TResult? Function(_OnCurrentLocation value)? onCurrentLocation,
    TResult? Function(_OnMapStyleChanged value)? onMapStyleChanged,
  }) {
    return onCurrentLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MapStarted value)? started,
    TResult Function(_MapCreated value)? mapCreated,
    TResult Function(_OnCameraMove value)? onCameraMove,
    TResult Function(_OnCameraIdle value)? onCameraIdle,
    TResult Function(_OnCurrentLocation value)? onCurrentLocation,
    TResult Function(_OnMapStyleChanged value)? onMapStyleChanged,
    required TResult orElse(),
  }) {
    if (onCurrentLocation != null) {
      return onCurrentLocation(this);
    }
    return orElse();
  }
}

abstract class _OnCurrentLocation implements HomeMapEvent {
  const factory _OnCurrentLocation() = _$OnCurrentLocationImpl;
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
    extends _$HomeMapEventCopyWithImpl<$Res, _$OnMapStyleChangedImpl>
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
    return 'HomeMapEvent.onMapStyleChanged(isDark: $isDark)';
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
    required TResult Function() started,
    required TResult Function(
            GoogleMapController googleMapController, bool isDark)
        mapCreated,
    required TResult Function(CameraPosition position) onCameraMove,
    required TResult Function() onCameraIdle,
    required TResult Function() onCurrentLocation,
    required TResult Function(bool isDark) onMapStyleChanged,
  }) {
    return onMapStyleChanged(isDark);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GoogleMapController googleMapController, bool isDark)?
        mapCreated,
    TResult? Function(CameraPosition position)? onCameraMove,
    TResult? Function()? onCameraIdle,
    TResult? Function()? onCurrentLocation,
    TResult? Function(bool isDark)? onMapStyleChanged,
  }) {
    return onMapStyleChanged?.call(isDark);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GoogleMapController googleMapController, bool isDark)?
        mapCreated,
    TResult Function(CameraPosition position)? onCameraMove,
    TResult Function()? onCameraIdle,
    TResult Function()? onCurrentLocation,
    TResult Function(bool isDark)? onMapStyleChanged,
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
    required TResult Function(_MapStarted value) started,
    required TResult Function(_MapCreated value) mapCreated,
    required TResult Function(_OnCameraMove value) onCameraMove,
    required TResult Function(_OnCameraIdle value) onCameraIdle,
    required TResult Function(_OnCurrentLocation value) onCurrentLocation,
    required TResult Function(_OnMapStyleChanged value) onMapStyleChanged,
  }) {
    return onMapStyleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MapStarted value)? started,
    TResult? Function(_MapCreated value)? mapCreated,
    TResult? Function(_OnCameraMove value)? onCameraMove,
    TResult? Function(_OnCameraIdle value)? onCameraIdle,
    TResult? Function(_OnCurrentLocation value)? onCurrentLocation,
    TResult? Function(_OnMapStyleChanged value)? onMapStyleChanged,
  }) {
    return onMapStyleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MapStarted value)? started,
    TResult Function(_MapCreated value)? mapCreated,
    TResult Function(_OnCameraMove value)? onCameraMove,
    TResult Function(_OnCameraIdle value)? onCameraIdle,
    TResult Function(_OnCurrentLocation value)? onCurrentLocation,
    TResult Function(_OnMapStyleChanged value)? onMapStyleChanged,
    required TResult orElse(),
  }) {
    if (onMapStyleChanged != null) {
      return onMapStyleChanged(this);
    }
    return orElse();
  }
}

abstract class _OnMapStyleChanged implements HomeMapEvent {
  const factory _OnMapStyleChanged({required final bool isDark}) =
      _$OnMapStyleChangedImpl;

  bool get isDark;
  @JsonKey(ignore: true)
  _$$OnMapStyleChangedImplCopyWith<_$OnMapStyleChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeMapState {
  LatLng get currentLatLng => throw _privateConstructorUsedError;
  LatLng get cameraLatLng => throw _privateConstructorUsedError;
  Set<Marker> get markers => throw _privateConstructorUsedError;
  List<AddressModel> get addressList => throw _privateConstructorUsedError;
  GoogleMapController? get googleMapController =>
      throw _privateConstructorUsedError;
  String get currentAddress => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            LatLng currentLatLng,
            LatLng cameraLatLng,
            Set<Marker> markers,
            List<AddressModel> addressList,
            GoogleMapController? googleMapController,
            String currentAddress)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            LatLng currentLatLng,
            LatLng cameraLatLng,
            Set<Marker> markers,
            List<AddressModel> addressList,
            GoogleMapController? googleMapController,
            String currentAddress)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            LatLng currentLatLng,
            LatLng cameraLatLng,
            Set<Marker> markers,
            List<AddressModel> addressList,
            GoogleMapController? googleMapController,
            String currentAddress)?
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
  $HomeMapStateCopyWith<HomeMapState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeMapStateCopyWith<$Res> {
  factory $HomeMapStateCopyWith(
          HomeMapState value, $Res Function(HomeMapState) then) =
      _$HomeMapStateCopyWithImpl<$Res, HomeMapState>;
  @useResult
  $Res call(
      {LatLng currentLatLng,
      LatLng cameraLatLng,
      Set<Marker> markers,
      List<AddressModel> addressList,
      GoogleMapController? googleMapController,
      String currentAddress});
}

/// @nodoc
class _$HomeMapStateCopyWithImpl<$Res, $Val extends HomeMapState>
    implements $HomeMapStateCopyWith<$Res> {
  _$HomeMapStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLatLng = null,
    Object? cameraLatLng = null,
    Object? markers = null,
    Object? addressList = null,
    Object? googleMapController = freezed,
    Object? currentAddress = null,
  }) {
    return _then(_value.copyWith(
      currentLatLng: null == currentLatLng
          ? _value.currentLatLng
          : currentLatLng // ignore: cast_nullable_to_non_nullable
              as LatLng,
      cameraLatLng: null == cameraLatLng
          ? _value.cameraLatLng
          : cameraLatLng // ignore: cast_nullable_to_non_nullable
              as LatLng,
      markers: null == markers
          ? _value.markers
          : markers // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
      addressList: null == addressList
          ? _value.addressList
          : addressList // ignore: cast_nullable_to_non_nullable
              as List<AddressModel>,
      googleMapController: freezed == googleMapController
          ? _value.googleMapController
          : googleMapController // ignore: cast_nullable_to_non_nullable
              as GoogleMapController?,
      currentAddress: null == currentAddress
          ? _value.currentAddress
          : currentAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $HomeMapStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LatLng currentLatLng,
      LatLng cameraLatLng,
      Set<Marker> markers,
      List<AddressModel> addressList,
      GoogleMapController? googleMapController,
      String currentAddress});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeMapStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLatLng = null,
    Object? cameraLatLng = null,
    Object? markers = null,
    Object? addressList = null,
    Object? googleMapController = freezed,
    Object? currentAddress = null,
  }) {
    return _then(_$InitialImpl(
      currentLatLng: null == currentLatLng
          ? _value.currentLatLng
          : currentLatLng // ignore: cast_nullable_to_non_nullable
              as LatLng,
      cameraLatLng: null == cameraLatLng
          ? _value.cameraLatLng
          : cameraLatLng // ignore: cast_nullable_to_non_nullable
              as LatLng,
      markers: null == markers
          ? _value._markers
          : markers // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
      addressList: null == addressList
          ? _value._addressList
          : addressList // ignore: cast_nullable_to_non_nullable
              as List<AddressModel>,
      googleMapController: freezed == googleMapController
          ? _value.googleMapController
          : googleMapController // ignore: cast_nullable_to_non_nullable
              as GoogleMapController?,
      currentAddress: null == currentAddress
          ? _value.currentAddress
          : currentAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.currentLatLng = const LatLng(20.593683, 78.962883),
      this.cameraLatLng = const LatLng(0, 0),
      final Set<Marker> markers = const <Marker>{},
      final List<AddressModel> addressList = const [],
      this.googleMapController,
      this.currentAddress = ""})
      : _markers = markers,
        _addressList = addressList;

  @override
  @JsonKey()
  final LatLng currentLatLng;
  @override
  @JsonKey()
  final LatLng cameraLatLng;
  final Set<Marker> _markers;
  @override
  @JsonKey()
  Set<Marker> get markers {
    if (_markers is EqualUnmodifiableSetView) return _markers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_markers);
  }

  final List<AddressModel> _addressList;
  @override
  @JsonKey()
  List<AddressModel> get addressList {
    if (_addressList is EqualUnmodifiableListView) return _addressList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addressList);
  }

  @override
  final GoogleMapController? googleMapController;
  @override
  @JsonKey()
  final String currentAddress;

  @override
  String toString() {
    return 'HomeMapState.initial(currentLatLng: $currentLatLng, cameraLatLng: $cameraLatLng, markers: $markers, addressList: $addressList, googleMapController: $googleMapController, currentAddress: $currentAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.currentLatLng, currentLatLng) ||
                other.currentLatLng == currentLatLng) &&
            (identical(other.cameraLatLng, cameraLatLng) ||
                other.cameraLatLng == cameraLatLng) &&
            const DeepCollectionEquality().equals(other._markers, _markers) &&
            const DeepCollectionEquality()
                .equals(other._addressList, _addressList) &&
            (identical(other.googleMapController, googleMapController) ||
                other.googleMapController == googleMapController) &&
            (identical(other.currentAddress, currentAddress) ||
                other.currentAddress == currentAddress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentLatLng,
      cameraLatLng,
      const DeepCollectionEquality().hash(_markers),
      const DeepCollectionEquality().hash(_addressList),
      googleMapController,
      currentAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            LatLng currentLatLng,
            LatLng cameraLatLng,
            Set<Marker> markers,
            List<AddressModel> addressList,
            GoogleMapController? googleMapController,
            String currentAddress)
        initial,
  }) {
    return initial(currentLatLng, cameraLatLng, markers, addressList,
        googleMapController, currentAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            LatLng currentLatLng,
            LatLng cameraLatLng,
            Set<Marker> markers,
            List<AddressModel> addressList,
            GoogleMapController? googleMapController,
            String currentAddress)?
        initial,
  }) {
    return initial?.call(currentLatLng, cameraLatLng, markers, addressList,
        googleMapController, currentAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            LatLng currentLatLng,
            LatLng cameraLatLng,
            Set<Marker> markers,
            List<AddressModel> addressList,
            GoogleMapController? googleMapController,
            String currentAddress)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(currentLatLng, cameraLatLng, markers, addressList,
          googleMapController, currentAddress);
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

abstract class _Initial implements HomeMapState {
  const factory _Initial(
      {final LatLng currentLatLng,
      final LatLng cameraLatLng,
      final Set<Marker> markers,
      final List<AddressModel> addressList,
      final GoogleMapController? googleMapController,
      final String currentAddress}) = _$InitialImpl;

  @override
  LatLng get currentLatLng;
  @override
  LatLng get cameraLatLng;
  @override
  Set<Marker> get markers;
  @override
  List<AddressModel> get addressList;
  @override
  GoogleMapController? get googleMapController;
  @override
  String get currentAddress;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
