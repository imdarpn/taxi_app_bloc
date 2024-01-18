// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpEvent {
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
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res, SignUpEvent>;
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res, $Val extends SignUpEvent>
    implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

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
    extends _$SignUpEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'SignUpEvent.started()';
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

abstract class _Started implements SignUpEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
mixin _$SignUpState {
  FocusNode get nameFocusNode => throw _privateConstructorUsedError;
  FocusNode get emailFocusNode => throw _privateConstructorUsedError;
  FocusNode get phoneNumberFocusNode => throw _privateConstructorUsedError;
  TextEditingController get nameController =>
      throw _privateConstructorUsedError;
  TextEditingController get emailController =>
      throw _privateConstructorUsedError;
  TextEditingController get phoneNumberController =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            FocusNode nameFocusNode,
            FocusNode emailFocusNode,
            FocusNode phoneNumberFocusNode,
            TextEditingController nameController,
            TextEditingController emailController,
            TextEditingController phoneNumberController)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            FocusNode nameFocusNode,
            FocusNode emailFocusNode,
            FocusNode phoneNumberFocusNode,
            TextEditingController nameController,
            TextEditingController emailController,
            TextEditingController phoneNumberController)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            FocusNode nameFocusNode,
            FocusNode emailFocusNode,
            FocusNode phoneNumberFocusNode,
            TextEditingController nameController,
            TextEditingController emailController,
            TextEditingController phoneNumberController)?
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
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
  @useResult
  $Res call(
      {FocusNode nameFocusNode,
      FocusNode emailFocusNode,
      FocusNode phoneNumberFocusNode,
      TextEditingController nameController,
      TextEditingController emailController,
      TextEditingController phoneNumberController});
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameFocusNode = null,
    Object? emailFocusNode = null,
    Object? phoneNumberFocusNode = null,
    Object? nameController = null,
    Object? emailController = null,
    Object? phoneNumberController = null,
  }) {
    return _then(_value.copyWith(
      nameFocusNode: null == nameFocusNode
          ? _value.nameFocusNode
          : nameFocusNode // ignore: cast_nullable_to_non_nullable
              as FocusNode,
      emailFocusNode: null == emailFocusNode
          ? _value.emailFocusNode
          : emailFocusNode // ignore: cast_nullable_to_non_nullable
              as FocusNode,
      phoneNumberFocusNode: null == phoneNumberFocusNode
          ? _value.phoneNumberFocusNode
          : phoneNumberFocusNode // ignore: cast_nullable_to_non_nullable
              as FocusNode,
      nameController: null == nameController
          ? _value.nameController
          : nameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      emailController: null == emailController
          ? _value.emailController
          : emailController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      phoneNumberController: null == phoneNumberController
          ? _value.phoneNumberController
          : phoneNumberController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FocusNode nameFocusNode,
      FocusNode emailFocusNode,
      FocusNode phoneNumberFocusNode,
      TextEditingController nameController,
      TextEditingController emailController,
      TextEditingController phoneNumberController});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameFocusNode = null,
    Object? emailFocusNode = null,
    Object? phoneNumberFocusNode = null,
    Object? nameController = null,
    Object? emailController = null,
    Object? phoneNumberController = null,
  }) {
    return _then(_$InitialImpl(
      nameFocusNode: null == nameFocusNode
          ? _value.nameFocusNode
          : nameFocusNode // ignore: cast_nullable_to_non_nullable
              as FocusNode,
      emailFocusNode: null == emailFocusNode
          ? _value.emailFocusNode
          : emailFocusNode // ignore: cast_nullable_to_non_nullable
              as FocusNode,
      phoneNumberFocusNode: null == phoneNumberFocusNode
          ? _value.phoneNumberFocusNode
          : phoneNumberFocusNode // ignore: cast_nullable_to_non_nullable
              as FocusNode,
      nameController: null == nameController
          ? _value.nameController
          : nameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      emailController: null == emailController
          ? _value.emailController
          : emailController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      phoneNumberController: null == phoneNumberController
          ? _value.phoneNumberController
          : phoneNumberController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.nameFocusNode,
      required this.emailFocusNode,
      required this.phoneNumberFocusNode,
      required this.nameController,
      required this.emailController,
      required this.phoneNumberController});

  @override
  final FocusNode nameFocusNode;
  @override
  final FocusNode emailFocusNode;
  @override
  final FocusNode phoneNumberFocusNode;
  @override
  final TextEditingController nameController;
  @override
  final TextEditingController emailController;
  @override
  final TextEditingController phoneNumberController;

  @override
  String toString() {
    return 'SignUpState.initial(nameFocusNode: $nameFocusNode, emailFocusNode: $emailFocusNode, phoneNumberFocusNode: $phoneNumberFocusNode, nameController: $nameController, emailController: $emailController, phoneNumberController: $phoneNumberController)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.nameFocusNode, nameFocusNode) ||
                other.nameFocusNode == nameFocusNode) &&
            (identical(other.emailFocusNode, emailFocusNode) ||
                other.emailFocusNode == emailFocusNode) &&
            (identical(other.phoneNumberFocusNode, phoneNumberFocusNode) ||
                other.phoneNumberFocusNode == phoneNumberFocusNode) &&
            (identical(other.nameController, nameController) ||
                other.nameController == nameController) &&
            (identical(other.emailController, emailController) ||
                other.emailController == emailController) &&
            (identical(other.phoneNumberController, phoneNumberController) ||
                other.phoneNumberController == phoneNumberController));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      nameFocusNode,
      emailFocusNode,
      phoneNumberFocusNode,
      nameController,
      emailController,
      phoneNumberController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            FocusNode nameFocusNode,
            FocusNode emailFocusNode,
            FocusNode phoneNumberFocusNode,
            TextEditingController nameController,
            TextEditingController emailController,
            TextEditingController phoneNumberController)
        initial,
  }) {
    return initial(nameFocusNode, emailFocusNode, phoneNumberFocusNode,
        nameController, emailController, phoneNumberController);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            FocusNode nameFocusNode,
            FocusNode emailFocusNode,
            FocusNode phoneNumberFocusNode,
            TextEditingController nameController,
            TextEditingController emailController,
            TextEditingController phoneNumberController)?
        initial,
  }) {
    return initial?.call(nameFocusNode, emailFocusNode, phoneNumberFocusNode,
        nameController, emailController, phoneNumberController);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            FocusNode nameFocusNode,
            FocusNode emailFocusNode,
            FocusNode phoneNumberFocusNode,
            TextEditingController nameController,
            TextEditingController emailController,
            TextEditingController phoneNumberController)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(nameFocusNode, emailFocusNode, phoneNumberFocusNode,
          nameController, emailController, phoneNumberController);
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

abstract class _Initial implements SignUpState {
  const factory _Initial(
          {required final FocusNode nameFocusNode,
          required final FocusNode emailFocusNode,
          required final FocusNode phoneNumberFocusNode,
          required final TextEditingController nameController,
          required final TextEditingController emailController,
          required final TextEditingController phoneNumberController}) =
      _$InitialImpl;

  @override
  FocusNode get nameFocusNode;
  @override
  FocusNode get emailFocusNode;
  @override
  FocusNode get phoneNumberFocusNode;
  @override
  TextEditingController get nameController;
  @override
  TextEditingController get emailController;
  @override
  TextEditingController get phoneNumberController;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
