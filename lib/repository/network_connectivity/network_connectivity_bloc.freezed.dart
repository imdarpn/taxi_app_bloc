// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_connectivity_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NetworkConnectivityEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkConnectivityEventCopyWith<$Res> {
  factory $NetworkConnectivityEventCopyWith(NetworkConnectivityEvent value,
          $Res Function(NetworkConnectivityEvent) then) =
      _$NetworkConnectivityEventCopyWithImpl<$Res, NetworkConnectivityEvent>;
}

/// @nodoc
class _$NetworkConnectivityEventCopyWithImpl<$Res,
        $Val extends NetworkConnectivityEvent>
    implements $NetworkConnectivityEventCopyWith<$Res> {
  _$NetworkConnectivityEventCopyWithImpl(this._value, this._then);

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
    extends _$NetworkConnectivityEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'NetworkConnectivityEvent.started()';
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
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
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
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements NetworkConnectivityEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
mixin _$NetworkConnectivityState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() lost,
    required TResult Function() gained,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? lost,
    TResult? Function()? gained,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? lost,
    TResult Function()? gained,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkInitital value) initial,
    required TResult Function(NetworkDisconnected value) lost,
    required TResult Function(NetworkConnected value) gained,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkInitital value)? initial,
    TResult? Function(NetworkDisconnected value)? lost,
    TResult? Function(NetworkConnected value)? gained,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkInitital value)? initial,
    TResult Function(NetworkDisconnected value)? lost,
    TResult Function(NetworkConnected value)? gained,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkConnectivityStateCopyWith<$Res> {
  factory $NetworkConnectivityStateCopyWith(NetworkConnectivityState value,
          $Res Function(NetworkConnectivityState) then) =
      _$NetworkConnectivityStateCopyWithImpl<$Res, NetworkConnectivityState>;
}

/// @nodoc
class _$NetworkConnectivityStateCopyWithImpl<$Res,
        $Val extends NetworkConnectivityState>
    implements $NetworkConnectivityStateCopyWith<$Res> {
  _$NetworkConnectivityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NetworkInititalImplCopyWith<$Res> {
  factory _$$NetworkInititalImplCopyWith(_$NetworkInititalImpl value,
          $Res Function(_$NetworkInititalImpl) then) =
      __$$NetworkInititalImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkInititalImplCopyWithImpl<$Res>
    extends _$NetworkConnectivityStateCopyWithImpl<$Res, _$NetworkInititalImpl>
    implements _$$NetworkInititalImplCopyWith<$Res> {
  __$$NetworkInititalImplCopyWithImpl(
      _$NetworkInititalImpl _value, $Res Function(_$NetworkInititalImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NetworkInititalImpl implements NetworkInitital {
  const _$NetworkInititalImpl();

  @override
  String toString() {
    return 'NetworkConnectivityState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NetworkInititalImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() lost,
    required TResult Function() gained,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? lost,
    TResult? Function()? gained,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? lost,
    TResult Function()? gained,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkInitital value) initial,
    required TResult Function(NetworkDisconnected value) lost,
    required TResult Function(NetworkConnected value) gained,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkInitital value)? initial,
    TResult? Function(NetworkDisconnected value)? lost,
    TResult? Function(NetworkConnected value)? gained,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkInitital value)? initial,
    TResult Function(NetworkDisconnected value)? lost,
    TResult Function(NetworkConnected value)? gained,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class NetworkInitital implements NetworkConnectivityState {
  const factory NetworkInitital() = _$NetworkInititalImpl;
}

/// @nodoc
abstract class _$$NetworkDisconnectedImplCopyWith<$Res> {
  factory _$$NetworkDisconnectedImplCopyWith(_$NetworkDisconnectedImpl value,
          $Res Function(_$NetworkDisconnectedImpl) then) =
      __$$NetworkDisconnectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkDisconnectedImplCopyWithImpl<$Res>
    extends _$NetworkConnectivityStateCopyWithImpl<$Res,
        _$NetworkDisconnectedImpl>
    implements _$$NetworkDisconnectedImplCopyWith<$Res> {
  __$$NetworkDisconnectedImplCopyWithImpl(_$NetworkDisconnectedImpl _value,
      $Res Function(_$NetworkDisconnectedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NetworkDisconnectedImpl implements NetworkDisconnected {
  const _$NetworkDisconnectedImpl();

  @override
  String toString() {
    return 'NetworkConnectivityState.lost()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkDisconnectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() lost,
    required TResult Function() gained,
  }) {
    return lost();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? lost,
    TResult? Function()? gained,
  }) {
    return lost?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? lost,
    TResult Function()? gained,
    required TResult orElse(),
  }) {
    if (lost != null) {
      return lost();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkInitital value) initial,
    required TResult Function(NetworkDisconnected value) lost,
    required TResult Function(NetworkConnected value) gained,
  }) {
    return lost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkInitital value)? initial,
    TResult? Function(NetworkDisconnected value)? lost,
    TResult? Function(NetworkConnected value)? gained,
  }) {
    return lost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkInitital value)? initial,
    TResult Function(NetworkDisconnected value)? lost,
    TResult Function(NetworkConnected value)? gained,
    required TResult orElse(),
  }) {
    if (lost != null) {
      return lost(this);
    }
    return orElse();
  }
}

abstract class NetworkDisconnected implements NetworkConnectivityState {
  const factory NetworkDisconnected() = _$NetworkDisconnectedImpl;
}

/// @nodoc
abstract class _$$NetworkConnectedImplCopyWith<$Res> {
  factory _$$NetworkConnectedImplCopyWith(_$NetworkConnectedImpl value,
          $Res Function(_$NetworkConnectedImpl) then) =
      __$$NetworkConnectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkConnectedImplCopyWithImpl<$Res>
    extends _$NetworkConnectivityStateCopyWithImpl<$Res, _$NetworkConnectedImpl>
    implements _$$NetworkConnectedImplCopyWith<$Res> {
  __$$NetworkConnectedImplCopyWithImpl(_$NetworkConnectedImpl _value,
      $Res Function(_$NetworkConnectedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NetworkConnectedImpl implements NetworkConnected {
  const _$NetworkConnectedImpl();

  @override
  String toString() {
    return 'NetworkConnectivityState.gained()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NetworkConnectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() lost,
    required TResult Function() gained,
  }) {
    return gained();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? lost,
    TResult? Function()? gained,
  }) {
    return gained?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? lost,
    TResult Function()? gained,
    required TResult orElse(),
  }) {
    if (gained != null) {
      return gained();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkInitital value) initial,
    required TResult Function(NetworkDisconnected value) lost,
    required TResult Function(NetworkConnected value) gained,
  }) {
    return gained(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkInitital value)? initial,
    TResult? Function(NetworkDisconnected value)? lost,
    TResult? Function(NetworkConnected value)? gained,
  }) {
    return gained?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkInitital value)? initial,
    TResult Function(NetworkDisconnected value)? lost,
    TResult Function(NetworkConnected value)? gained,
    required TResult orElse(),
  }) {
    if (gained != null) {
      return gained(this);
    }
    return orElse();
  }
}

abstract class NetworkConnected implements NetworkConnectivityState {
  const factory NetworkConnected() = _$NetworkConnectedImpl;
}
