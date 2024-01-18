// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ThemeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() themeChange,
    required TResult Function(Brightness brightness) themeListener,
    required TResult Function(int index) radioChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? themeChange,
    TResult? Function(Brightness brightness)? themeListener,
    TResult? Function(int index)? radioChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? themeChange,
    TResult Function(Brightness brightness)? themeListener,
    TResult Function(int index)? radioChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ThemeChange value) themeChange,
    required TResult Function(_ThemeListener value) themeListener,
    required TResult Function(_RadioChange value) radioChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ThemeChange value)? themeChange,
    TResult? Function(_ThemeListener value)? themeListener,
    TResult? Function(_RadioChange value)? radioChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ThemeChange value)? themeChange,
    TResult Function(_ThemeListener value)? themeListener,
    TResult Function(_RadioChange value)? radioChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeEventCopyWith<$Res> {
  factory $ThemeEventCopyWith(
          ThemeEvent value, $Res Function(ThemeEvent) then) =
      _$ThemeEventCopyWithImpl<$Res, ThemeEvent>;
}

/// @nodoc
class _$ThemeEventCopyWithImpl<$Res, $Val extends ThemeEvent>
    implements $ThemeEventCopyWith<$Res> {
  _$ThemeEventCopyWithImpl(this._value, this._then);

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
    extends _$ThemeEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'ThemeEvent.started()';
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
    required TResult Function() themeChange,
    required TResult Function(Brightness brightness) themeListener,
    required TResult Function(int index) radioChange,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? themeChange,
    TResult? Function(Brightness brightness)? themeListener,
    TResult? Function(int index)? radioChange,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? themeChange,
    TResult Function(Brightness brightness)? themeListener,
    TResult Function(int index)? radioChange,
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
    required TResult Function(_ThemeChange value) themeChange,
    required TResult Function(_ThemeListener value) themeListener,
    required TResult Function(_RadioChange value) radioChange,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ThemeChange value)? themeChange,
    TResult? Function(_ThemeListener value)? themeListener,
    TResult? Function(_RadioChange value)? radioChange,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ThemeChange value)? themeChange,
    TResult Function(_ThemeListener value)? themeListener,
    TResult Function(_RadioChange value)? radioChange,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ThemeEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$ThemeChangeImplCopyWith<$Res> {
  factory _$$ThemeChangeImplCopyWith(
          _$ThemeChangeImpl value, $Res Function(_$ThemeChangeImpl) then) =
      __$$ThemeChangeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ThemeChangeImplCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$ThemeChangeImpl>
    implements _$$ThemeChangeImplCopyWith<$Res> {
  __$$ThemeChangeImplCopyWithImpl(
      _$ThemeChangeImpl _value, $Res Function(_$ThemeChangeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ThemeChangeImpl implements _ThemeChange {
  const _$ThemeChangeImpl();

  @override
  String toString() {
    return 'ThemeEvent.themeChange()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ThemeChangeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() themeChange,
    required TResult Function(Brightness brightness) themeListener,
    required TResult Function(int index) radioChange,
  }) {
    return themeChange();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? themeChange,
    TResult? Function(Brightness brightness)? themeListener,
    TResult? Function(int index)? radioChange,
  }) {
    return themeChange?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? themeChange,
    TResult Function(Brightness brightness)? themeListener,
    TResult Function(int index)? radioChange,
    required TResult orElse(),
  }) {
    if (themeChange != null) {
      return themeChange();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ThemeChange value) themeChange,
    required TResult Function(_ThemeListener value) themeListener,
    required TResult Function(_RadioChange value) radioChange,
  }) {
    return themeChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ThemeChange value)? themeChange,
    TResult? Function(_ThemeListener value)? themeListener,
    TResult? Function(_RadioChange value)? radioChange,
  }) {
    return themeChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ThemeChange value)? themeChange,
    TResult Function(_ThemeListener value)? themeListener,
    TResult Function(_RadioChange value)? radioChange,
    required TResult orElse(),
  }) {
    if (themeChange != null) {
      return themeChange(this);
    }
    return orElse();
  }
}

abstract class _ThemeChange implements ThemeEvent {
  const factory _ThemeChange() = _$ThemeChangeImpl;
}

/// @nodoc
abstract class _$$ThemeListenerImplCopyWith<$Res> {
  factory _$$ThemeListenerImplCopyWith(
          _$ThemeListenerImpl value, $Res Function(_$ThemeListenerImpl) then) =
      __$$ThemeListenerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Brightness brightness});
}

/// @nodoc
class __$$ThemeListenerImplCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$ThemeListenerImpl>
    implements _$$ThemeListenerImplCopyWith<$Res> {
  __$$ThemeListenerImplCopyWithImpl(
      _$ThemeListenerImpl _value, $Res Function(_$ThemeListenerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brightness = null,
  }) {
    return _then(_$ThemeListenerImpl(
      brightness: null == brightness
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as Brightness,
    ));
  }
}

/// @nodoc

class _$ThemeListenerImpl implements _ThemeListener {
  const _$ThemeListenerImpl({required this.brightness});

  @override
  final Brightness brightness;

  @override
  String toString() {
    return 'ThemeEvent.themeListener(brightness: $brightness)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeListenerImpl &&
            (identical(other.brightness, brightness) ||
                other.brightness == brightness));
  }

  @override
  int get hashCode => Object.hash(runtimeType, brightness);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeListenerImplCopyWith<_$ThemeListenerImpl> get copyWith =>
      __$$ThemeListenerImplCopyWithImpl<_$ThemeListenerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() themeChange,
    required TResult Function(Brightness brightness) themeListener,
    required TResult Function(int index) radioChange,
  }) {
    return themeListener(brightness);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? themeChange,
    TResult? Function(Brightness brightness)? themeListener,
    TResult? Function(int index)? radioChange,
  }) {
    return themeListener?.call(brightness);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? themeChange,
    TResult Function(Brightness brightness)? themeListener,
    TResult Function(int index)? radioChange,
    required TResult orElse(),
  }) {
    if (themeListener != null) {
      return themeListener(brightness);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ThemeChange value) themeChange,
    required TResult Function(_ThemeListener value) themeListener,
    required TResult Function(_RadioChange value) radioChange,
  }) {
    return themeListener(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ThemeChange value)? themeChange,
    TResult? Function(_ThemeListener value)? themeListener,
    TResult? Function(_RadioChange value)? radioChange,
  }) {
    return themeListener?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ThemeChange value)? themeChange,
    TResult Function(_ThemeListener value)? themeListener,
    TResult Function(_RadioChange value)? radioChange,
    required TResult orElse(),
  }) {
    if (themeListener != null) {
      return themeListener(this);
    }
    return orElse();
  }
}

abstract class _ThemeListener implements ThemeEvent {
  const factory _ThemeListener({required final Brightness brightness}) =
      _$ThemeListenerImpl;

  Brightness get brightness;
  @JsonKey(ignore: true)
  _$$ThemeListenerImplCopyWith<_$ThemeListenerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RadioChangeImplCopyWith<$Res> {
  factory _$$RadioChangeImplCopyWith(
          _$RadioChangeImpl value, $Res Function(_$RadioChangeImpl) then) =
      __$$RadioChangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$RadioChangeImplCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$RadioChangeImpl>
    implements _$$RadioChangeImplCopyWith<$Res> {
  __$$RadioChangeImplCopyWithImpl(
      _$RadioChangeImpl _value, $Res Function(_$RadioChangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$RadioChangeImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RadioChangeImpl implements _RadioChange {
  const _$RadioChangeImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'ThemeEvent.radioChange(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RadioChangeImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RadioChangeImplCopyWith<_$RadioChangeImpl> get copyWith =>
      __$$RadioChangeImplCopyWithImpl<_$RadioChangeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() themeChange,
    required TResult Function(Brightness brightness) themeListener,
    required TResult Function(int index) radioChange,
  }) {
    return radioChange(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? themeChange,
    TResult? Function(Brightness brightness)? themeListener,
    TResult? Function(int index)? radioChange,
  }) {
    return radioChange?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? themeChange,
    TResult Function(Brightness brightness)? themeListener,
    TResult Function(int index)? radioChange,
    required TResult orElse(),
  }) {
    if (radioChange != null) {
      return radioChange(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ThemeChange value) themeChange,
    required TResult Function(_ThemeListener value) themeListener,
    required TResult Function(_RadioChange value) radioChange,
  }) {
    return radioChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ThemeChange value)? themeChange,
    TResult? Function(_ThemeListener value)? themeListener,
    TResult? Function(_RadioChange value)? radioChange,
  }) {
    return radioChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ThemeChange value)? themeChange,
    TResult Function(_ThemeListener value)? themeListener,
    TResult Function(_RadioChange value)? radioChange,
    required TResult orElse(),
  }) {
    if (radioChange != null) {
      return radioChange(this);
    }
    return orElse();
  }
}

abstract class _RadioChange implements ThemeEvent {
  const factory _RadioChange({required final int index}) = _$RadioChangeImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$RadioChangeImplCopyWith<_$RadioChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ThemeState {
  ThemeType get themeType => throw _privateConstructorUsedError;
  int get group => throw _privateConstructorUsedError;
  bool get isDark => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeType themeType, int group, bool isDark)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeType themeType, int group, bool isDark)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeType themeType, int group, bool isDark)? initial,
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
  $ThemeStateCopyWith<ThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res, ThemeState>;
  @useResult
  $Res call({ThemeType themeType, int group, bool isDark});
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res, $Val extends ThemeState>
    implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeType = null,
    Object? group = null,
    Object? isDark = null,
  }) {
    return _then(_value.copyWith(
      themeType: null == themeType
          ? _value.themeType
          : themeType // ignore: cast_nullable_to_non_nullable
              as ThemeType,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as int,
      isDark: null == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $ThemeStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeType themeType, int group, bool isDark});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeType = null,
    Object? group = null,
    Object? isDark = null,
  }) {
    return _then(_$InitialImpl(
      themeType: null == themeType
          ? _value.themeType
          : themeType // ignore: cast_nullable_to_non_nullable
              as ThemeType,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as int,
      isDark: null == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.themeType, required this.group, required this.isDark});

  @override
  final ThemeType themeType;
  @override
  final int group;
  @override
  final bool isDark;

  @override
  String toString() {
    return 'ThemeState.initial(themeType: $themeType, group: $group, isDark: $isDark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.themeType, themeType) ||
                other.themeType == themeType) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.isDark, isDark) || other.isDark == isDark));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeType, group, isDark);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeType themeType, int group, bool isDark)
        initial,
  }) {
    return initial(themeType, group, isDark);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeType themeType, int group, bool isDark)? initial,
  }) {
    return initial?.call(themeType, group, isDark);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeType themeType, int group, bool isDark)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(themeType, group, isDark);
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

abstract class _Initial implements ThemeState {
  const factory _Initial(
      {required final ThemeType themeType,
      required final int group,
      required final bool isDark}) = _$InitialImpl;

  @override
  ThemeType get themeType;
  @override
  int get group;
  @override
  bool get isDark;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
