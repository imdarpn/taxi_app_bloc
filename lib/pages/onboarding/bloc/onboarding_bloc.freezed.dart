// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OnboardingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initOnboardingEvent,
    required TResult Function(int pageIndex) pageChangeEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initOnboardingEvent,
    TResult? Function(int pageIndex)? pageChangeEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initOnboardingEvent,
    TResult Function(int pageIndex)? pageChangeEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitOnboardingEvent value) initOnboardingEvent,
    required TResult Function(_PageChangeEvent value) pageChangeEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitOnboardingEvent value)? initOnboardingEvent,
    TResult? Function(_PageChangeEvent value)? pageChangeEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitOnboardingEvent value)? initOnboardingEvent,
    TResult Function(_PageChangeEvent value)? pageChangeEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingEventCopyWith<$Res> {
  factory $OnboardingEventCopyWith(
          OnboardingEvent value, $Res Function(OnboardingEvent) then) =
      _$OnboardingEventCopyWithImpl<$Res, OnboardingEvent>;
}

/// @nodoc
class _$OnboardingEventCopyWithImpl<$Res, $Val extends OnboardingEvent>
    implements $OnboardingEventCopyWith<$Res> {
  _$OnboardingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitOnboardingEventImplCopyWith<$Res> {
  factory _$$InitOnboardingEventImplCopyWith(_$InitOnboardingEventImpl value,
          $Res Function(_$InitOnboardingEventImpl) then) =
      __$$InitOnboardingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitOnboardingEventImplCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$InitOnboardingEventImpl>
    implements _$$InitOnboardingEventImplCopyWith<$Res> {
  __$$InitOnboardingEventImplCopyWithImpl(_$InitOnboardingEventImpl _value,
      $Res Function(_$InitOnboardingEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitOnboardingEventImpl implements _InitOnboardingEvent {
  const _$InitOnboardingEventImpl();

  @override
  String toString() {
    return 'OnboardingEvent.initOnboardingEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitOnboardingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initOnboardingEvent,
    required TResult Function(int pageIndex) pageChangeEvent,
  }) {
    return initOnboardingEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initOnboardingEvent,
    TResult? Function(int pageIndex)? pageChangeEvent,
  }) {
    return initOnboardingEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initOnboardingEvent,
    TResult Function(int pageIndex)? pageChangeEvent,
    required TResult orElse(),
  }) {
    if (initOnboardingEvent != null) {
      return initOnboardingEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitOnboardingEvent value) initOnboardingEvent,
    required TResult Function(_PageChangeEvent value) pageChangeEvent,
  }) {
    return initOnboardingEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitOnboardingEvent value)? initOnboardingEvent,
    TResult? Function(_PageChangeEvent value)? pageChangeEvent,
  }) {
    return initOnboardingEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitOnboardingEvent value)? initOnboardingEvent,
    TResult Function(_PageChangeEvent value)? pageChangeEvent,
    required TResult orElse(),
  }) {
    if (initOnboardingEvent != null) {
      return initOnboardingEvent(this);
    }
    return orElse();
  }
}

abstract class _InitOnboardingEvent implements OnboardingEvent {
  const factory _InitOnboardingEvent() = _$InitOnboardingEventImpl;
}

/// @nodoc
abstract class _$$PageChangeEventImplCopyWith<$Res> {
  factory _$$PageChangeEventImplCopyWith(_$PageChangeEventImpl value,
          $Res Function(_$PageChangeEventImpl) then) =
      __$$PageChangeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int pageIndex});
}

/// @nodoc
class __$$PageChangeEventImplCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$PageChangeEventImpl>
    implements _$$PageChangeEventImplCopyWith<$Res> {
  __$$PageChangeEventImplCopyWithImpl(
      _$PageChangeEventImpl _value, $Res Function(_$PageChangeEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageIndex = null,
  }) {
    return _then(_$PageChangeEventImpl(
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PageChangeEventImpl implements _PageChangeEvent {
  const _$PageChangeEventImpl({required this.pageIndex});

  @override
  final int pageIndex;

  @override
  String toString() {
    return 'OnboardingEvent.pageChangeEvent(pageIndex: $pageIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageChangeEventImpl &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageChangeEventImplCopyWith<_$PageChangeEventImpl> get copyWith =>
      __$$PageChangeEventImplCopyWithImpl<_$PageChangeEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initOnboardingEvent,
    required TResult Function(int pageIndex) pageChangeEvent,
  }) {
    return pageChangeEvent(pageIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initOnboardingEvent,
    TResult? Function(int pageIndex)? pageChangeEvent,
  }) {
    return pageChangeEvent?.call(pageIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initOnboardingEvent,
    TResult Function(int pageIndex)? pageChangeEvent,
    required TResult orElse(),
  }) {
    if (pageChangeEvent != null) {
      return pageChangeEvent(pageIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitOnboardingEvent value) initOnboardingEvent,
    required TResult Function(_PageChangeEvent value) pageChangeEvent,
  }) {
    return pageChangeEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitOnboardingEvent value)? initOnboardingEvent,
    TResult? Function(_PageChangeEvent value)? pageChangeEvent,
  }) {
    return pageChangeEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitOnboardingEvent value)? initOnboardingEvent,
    TResult Function(_PageChangeEvent value)? pageChangeEvent,
    required TResult orElse(),
  }) {
    if (pageChangeEvent != null) {
      return pageChangeEvent(this);
    }
    return orElse();
  }
}

abstract class _PageChangeEvent implements OnboardingEvent {
  const factory _PageChangeEvent({required final int pageIndex}) =
      _$PageChangeEventImpl;

  int get pageIndex;
  @JsonKey(ignore: true)
  _$$PageChangeEventImplCopyWith<_$PageChangeEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OnboardingState {
  List<OnboardingModel> get onboardingModelList =>
      throw _privateConstructorUsedError;
  int get currentPageIndex => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<OnboardingModel> onboardingModelList, int currentPageIndex)
        initial,
    required TResult Function(
            List<OnboardingModel> onboardingModelList, int currentPageIndex)
        loadedList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<OnboardingModel> onboardingModelList, int currentPageIndex)?
        initial,
    TResult? Function(
            List<OnboardingModel> onboardingModelList, int currentPageIndex)?
        loadedList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<OnboardingModel> onboardingModelList, int currentPageIndex)?
        initial,
    TResult Function(
            List<OnboardingModel> onboardingModelList, int currentPageIndex)?
        loadedList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadedList value) loadedList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadedList value)? loadedList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadedList value)? loadedList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnboardingStateCopyWith<OnboardingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingStateCopyWith<$Res> {
  factory $OnboardingStateCopyWith(
          OnboardingState value, $Res Function(OnboardingState) then) =
      _$OnboardingStateCopyWithImpl<$Res, OnboardingState>;
  @useResult
  $Res call({List<OnboardingModel> onboardingModelList, int currentPageIndex});
}

/// @nodoc
class _$OnboardingStateCopyWithImpl<$Res, $Val extends OnboardingState>
    implements $OnboardingStateCopyWith<$Res> {
  _$OnboardingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onboardingModelList = null,
    Object? currentPageIndex = null,
  }) {
    return _then(_value.copyWith(
      onboardingModelList: null == onboardingModelList
          ? _value.onboardingModelList
          : onboardingModelList // ignore: cast_nullable_to_non_nullable
              as List<OnboardingModel>,
      currentPageIndex: null == currentPageIndex
          ? _value.currentPageIndex
          : currentPageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<OnboardingModel> onboardingModelList, int currentPageIndex});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onboardingModelList = null,
    Object? currentPageIndex = null,
  }) {
    return _then(_$InitialImpl(
      onboardingModelList: null == onboardingModelList
          ? _value._onboardingModelList
          : onboardingModelList // ignore: cast_nullable_to_non_nullable
              as List<OnboardingModel>,
      currentPageIndex: null == currentPageIndex
          ? _value.currentPageIndex
          : currentPageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {final List<OnboardingModel> onboardingModelList = const [],
      this.currentPageIndex = 0})
      : _onboardingModelList = onboardingModelList;

  final List<OnboardingModel> _onboardingModelList;
  @override
  @JsonKey()
  List<OnboardingModel> get onboardingModelList {
    if (_onboardingModelList is EqualUnmodifiableListView)
      return _onboardingModelList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_onboardingModelList);
  }

  @override
  @JsonKey()
  final int currentPageIndex;

  @override
  String toString() {
    return 'OnboardingState.initial(onboardingModelList: $onboardingModelList, currentPageIndex: $currentPageIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality()
                .equals(other._onboardingModelList, _onboardingModelList) &&
            (identical(other.currentPageIndex, currentPageIndex) ||
                other.currentPageIndex == currentPageIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_onboardingModelList),
      currentPageIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<OnboardingModel> onboardingModelList, int currentPageIndex)
        initial,
    required TResult Function(
            List<OnboardingModel> onboardingModelList, int currentPageIndex)
        loadedList,
  }) {
    return initial(onboardingModelList, currentPageIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<OnboardingModel> onboardingModelList, int currentPageIndex)?
        initial,
    TResult? Function(
            List<OnboardingModel> onboardingModelList, int currentPageIndex)?
        loadedList,
  }) {
    return initial?.call(onboardingModelList, currentPageIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<OnboardingModel> onboardingModelList, int currentPageIndex)?
        initial,
    TResult Function(
            List<OnboardingModel> onboardingModelList, int currentPageIndex)?
        loadedList,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(onboardingModelList, currentPageIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadedList value) loadedList,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadedList value)? loadedList,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadedList value)? loadedList,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OnboardingState {
  const factory _Initial(
      {final List<OnboardingModel> onboardingModelList,
      final int currentPageIndex}) = _$InitialImpl;

  @override
  List<OnboardingModel> get onboardingModelList;
  @override
  int get currentPageIndex;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedListImplCopyWith<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  factory _$$LoadedListImplCopyWith(
          _$LoadedListImpl value, $Res Function(_$LoadedListImpl) then) =
      __$$LoadedListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<OnboardingModel> onboardingModelList, int currentPageIndex});
}

/// @nodoc
class __$$LoadedListImplCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res, _$LoadedListImpl>
    implements _$$LoadedListImplCopyWith<$Res> {
  __$$LoadedListImplCopyWithImpl(
      _$LoadedListImpl _value, $Res Function(_$LoadedListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onboardingModelList = null,
    Object? currentPageIndex = null,
  }) {
    return _then(_$LoadedListImpl(
      onboardingModelList: null == onboardingModelList
          ? _value._onboardingModelList
          : onboardingModelList // ignore: cast_nullable_to_non_nullable
              as List<OnboardingModel>,
      currentPageIndex: null == currentPageIndex
          ? _value.currentPageIndex
          : currentPageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadedListImpl implements _LoadedList {
  const _$LoadedListImpl(
      {required final List<OnboardingModel> onboardingModelList,
      required this.currentPageIndex})
      : _onboardingModelList = onboardingModelList;

  final List<OnboardingModel> _onboardingModelList;
  @override
  List<OnboardingModel> get onboardingModelList {
    if (_onboardingModelList is EqualUnmodifiableListView)
      return _onboardingModelList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_onboardingModelList);
  }

  @override
  final int currentPageIndex;

  @override
  String toString() {
    return 'OnboardingState.loadedList(onboardingModelList: $onboardingModelList, currentPageIndex: $currentPageIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedListImpl &&
            const DeepCollectionEquality()
                .equals(other._onboardingModelList, _onboardingModelList) &&
            (identical(other.currentPageIndex, currentPageIndex) ||
                other.currentPageIndex == currentPageIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_onboardingModelList),
      currentPageIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedListImplCopyWith<_$LoadedListImpl> get copyWith =>
      __$$LoadedListImplCopyWithImpl<_$LoadedListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<OnboardingModel> onboardingModelList, int currentPageIndex)
        initial,
    required TResult Function(
            List<OnboardingModel> onboardingModelList, int currentPageIndex)
        loadedList,
  }) {
    return loadedList(onboardingModelList, currentPageIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<OnboardingModel> onboardingModelList, int currentPageIndex)?
        initial,
    TResult? Function(
            List<OnboardingModel> onboardingModelList, int currentPageIndex)?
        loadedList,
  }) {
    return loadedList?.call(onboardingModelList, currentPageIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<OnboardingModel> onboardingModelList, int currentPageIndex)?
        initial,
    TResult Function(
            List<OnboardingModel> onboardingModelList, int currentPageIndex)?
        loadedList,
    required TResult orElse(),
  }) {
    if (loadedList != null) {
      return loadedList(onboardingModelList, currentPageIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadedList value) loadedList,
  }) {
    return loadedList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadedList value)? loadedList,
  }) {
    return loadedList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadedList value)? loadedList,
    required TResult orElse(),
  }) {
    if (loadedList != null) {
      return loadedList(this);
    }
    return orElse();
  }
}

abstract class _LoadedList implements OnboardingState {
  const factory _LoadedList(
      {required final List<OnboardingModel> onboardingModelList,
      required final int currentPageIndex}) = _$LoadedListImpl;

  @override
  List<OnboardingModel> get onboardingModelList;
  @override
  int get currentPageIndex;
  @override
  @JsonKey(ignore: true)
  _$$LoadedListImplCopyWith<_$LoadedListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
