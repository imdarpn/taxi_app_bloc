// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CreditCardModel creditCardModel)
        onCreditCardChanged,
    required TResult Function(GlobalKey<FormState> formKey) onValidateCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CreditCardModel creditCardModel)? onCreditCardChanged,
    TResult? Function(GlobalKey<FormState> formKey)? onValidateCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreditCardModel creditCardModel)? onCreditCardChanged,
    TResult Function(GlobalKey<FormState> formKey)? onValidateCard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnCreditCardChanged value) onCreditCardChanged,
    required TResult Function(_OnValidateCard value) onValidateCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnCreditCardChanged value)? onCreditCardChanged,
    TResult? Function(_OnValidateCard value)? onValidateCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnCreditCardChanged value)? onCreditCardChanged,
    TResult Function(_OnValidateCard value)? onValidateCard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardEventCopyWith<$Res> {
  factory $CardEventCopyWith(CardEvent value, $Res Function(CardEvent) then) =
      _$CardEventCopyWithImpl<$Res, CardEvent>;
}

/// @nodoc
class _$CardEventCopyWithImpl<$Res, $Val extends CardEvent>
    implements $CardEventCopyWith<$Res> {
  _$CardEventCopyWithImpl(this._value, this._then);

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
    extends _$CardEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'CardEvent.started()';
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
    required TResult Function(CreditCardModel creditCardModel)
        onCreditCardChanged,
    required TResult Function(GlobalKey<FormState> formKey) onValidateCard,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CreditCardModel creditCardModel)? onCreditCardChanged,
    TResult? Function(GlobalKey<FormState> formKey)? onValidateCard,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreditCardModel creditCardModel)? onCreditCardChanged,
    TResult Function(GlobalKey<FormState> formKey)? onValidateCard,
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
    required TResult Function(_OnCreditCardChanged value) onCreditCardChanged,
    required TResult Function(_OnValidateCard value) onValidateCard,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnCreditCardChanged value)? onCreditCardChanged,
    TResult? Function(_OnValidateCard value)? onValidateCard,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnCreditCardChanged value)? onCreditCardChanged,
    TResult Function(_OnValidateCard value)? onValidateCard,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CardEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$OnCreditCardChangedImplCopyWith<$Res> {
  factory _$$OnCreditCardChangedImplCopyWith(_$OnCreditCardChangedImpl value,
          $Res Function(_$OnCreditCardChangedImpl) then) =
      __$$OnCreditCardChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreditCardModel creditCardModel});
}

/// @nodoc
class __$$OnCreditCardChangedImplCopyWithImpl<$Res>
    extends _$CardEventCopyWithImpl<$Res, _$OnCreditCardChangedImpl>
    implements _$$OnCreditCardChangedImplCopyWith<$Res> {
  __$$OnCreditCardChangedImplCopyWithImpl(_$OnCreditCardChangedImpl _value,
      $Res Function(_$OnCreditCardChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creditCardModel = null,
  }) {
    return _then(_$OnCreditCardChangedImpl(
      creditCardModel: null == creditCardModel
          ? _value.creditCardModel
          : creditCardModel // ignore: cast_nullable_to_non_nullable
              as CreditCardModel,
    ));
  }
}

/// @nodoc

class _$OnCreditCardChangedImpl implements _OnCreditCardChanged {
  const _$OnCreditCardChangedImpl({required this.creditCardModel});

  @override
  final CreditCardModel creditCardModel;

  @override
  String toString() {
    return 'CardEvent.onCreditCardChanged(creditCardModel: $creditCardModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnCreditCardChangedImpl &&
            (identical(other.creditCardModel, creditCardModel) ||
                other.creditCardModel == creditCardModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, creditCardModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnCreditCardChangedImplCopyWith<_$OnCreditCardChangedImpl> get copyWith =>
      __$$OnCreditCardChangedImplCopyWithImpl<_$OnCreditCardChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CreditCardModel creditCardModel)
        onCreditCardChanged,
    required TResult Function(GlobalKey<FormState> formKey) onValidateCard,
  }) {
    return onCreditCardChanged(creditCardModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CreditCardModel creditCardModel)? onCreditCardChanged,
    TResult? Function(GlobalKey<FormState> formKey)? onValidateCard,
  }) {
    return onCreditCardChanged?.call(creditCardModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreditCardModel creditCardModel)? onCreditCardChanged,
    TResult Function(GlobalKey<FormState> formKey)? onValidateCard,
    required TResult orElse(),
  }) {
    if (onCreditCardChanged != null) {
      return onCreditCardChanged(creditCardModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnCreditCardChanged value) onCreditCardChanged,
    required TResult Function(_OnValidateCard value) onValidateCard,
  }) {
    return onCreditCardChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnCreditCardChanged value)? onCreditCardChanged,
    TResult? Function(_OnValidateCard value)? onValidateCard,
  }) {
    return onCreditCardChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnCreditCardChanged value)? onCreditCardChanged,
    TResult Function(_OnValidateCard value)? onValidateCard,
    required TResult orElse(),
  }) {
    if (onCreditCardChanged != null) {
      return onCreditCardChanged(this);
    }
    return orElse();
  }
}

abstract class _OnCreditCardChanged implements CardEvent {
  const factory _OnCreditCardChanged(
          {required final CreditCardModel creditCardModel}) =
      _$OnCreditCardChangedImpl;

  CreditCardModel get creditCardModel;
  @JsonKey(ignore: true)
  _$$OnCreditCardChangedImplCopyWith<_$OnCreditCardChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnValidateCardImplCopyWith<$Res> {
  factory _$$OnValidateCardImplCopyWith(_$OnValidateCardImpl value,
          $Res Function(_$OnValidateCardImpl) then) =
      __$$OnValidateCardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GlobalKey<FormState> formKey});
}

/// @nodoc
class __$$OnValidateCardImplCopyWithImpl<$Res>
    extends _$CardEventCopyWithImpl<$Res, _$OnValidateCardImpl>
    implements _$$OnValidateCardImplCopyWith<$Res> {
  __$$OnValidateCardImplCopyWithImpl(
      _$OnValidateCardImpl _value, $Res Function(_$OnValidateCardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = null,
  }) {
    return _then(_$OnValidateCardImpl(
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
    ));
  }
}

/// @nodoc

class _$OnValidateCardImpl implements _OnValidateCard {
  const _$OnValidateCardImpl({required this.formKey});

  @override
  final GlobalKey<FormState> formKey;

  @override
  String toString() {
    return 'CardEvent.onValidateCard(formKey: $formKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnValidateCardImpl &&
            (identical(other.formKey, formKey) || other.formKey == formKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, formKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnValidateCardImplCopyWith<_$OnValidateCardImpl> get copyWith =>
      __$$OnValidateCardImplCopyWithImpl<_$OnValidateCardImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CreditCardModel creditCardModel)
        onCreditCardChanged,
    required TResult Function(GlobalKey<FormState> formKey) onValidateCard,
  }) {
    return onValidateCard(formKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CreditCardModel creditCardModel)? onCreditCardChanged,
    TResult? Function(GlobalKey<FormState> formKey)? onValidateCard,
  }) {
    return onValidateCard?.call(formKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreditCardModel creditCardModel)? onCreditCardChanged,
    TResult Function(GlobalKey<FormState> formKey)? onValidateCard,
    required TResult orElse(),
  }) {
    if (onValidateCard != null) {
      return onValidateCard(formKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnCreditCardChanged value) onCreditCardChanged,
    required TResult Function(_OnValidateCard value) onValidateCard,
  }) {
    return onValidateCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnCreditCardChanged value)? onCreditCardChanged,
    TResult? Function(_OnValidateCard value)? onValidateCard,
  }) {
    return onValidateCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnCreditCardChanged value)? onCreditCardChanged,
    TResult Function(_OnValidateCard value)? onValidateCard,
    required TResult orElse(),
  }) {
    if (onValidateCard != null) {
      return onValidateCard(this);
    }
    return orElse();
  }
}

abstract class _OnValidateCard implements CardEvent {
  const factory _OnValidateCard({required final GlobalKey<FormState> formKey}) =
      _$OnValidateCardImpl;

  GlobalKey<FormState> get formKey;
  @JsonKey(ignore: true)
  _$$OnValidateCardImplCopyWith<_$OnValidateCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CardState {
  String get cardNumber => throw _privateConstructorUsedError;
  String get expiryDate => throw _privateConstructorUsedError;
  String get cardHolderName => throw _privateConstructorUsedError;
  String get cvvCode => throw _privateConstructorUsedError;
  bool get isCvvFocused => throw _privateConstructorUsedError;
  bool get useGlassMorphism => throw _privateConstructorUsedError;
  bool get useBackgroundImage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String cardNumber,
            String expiryDate,
            String cardHolderName,
            String cvvCode,
            bool isCvvFocused,
            bool useGlassMorphism,
            bool useBackgroundImage)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String cardNumber,
            String expiryDate,
            String cardHolderName,
            String cvvCode,
            bool isCvvFocused,
            bool useGlassMorphism,
            bool useBackgroundImage)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String cardNumber,
            String expiryDate,
            String cardHolderName,
            String cvvCode,
            bool isCvvFocused,
            bool useGlassMorphism,
            bool useBackgroundImage)?
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
  $CardStateCopyWith<CardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardStateCopyWith<$Res> {
  factory $CardStateCopyWith(CardState value, $Res Function(CardState) then) =
      _$CardStateCopyWithImpl<$Res, CardState>;
  @useResult
  $Res call(
      {String cardNumber,
      String expiryDate,
      String cardHolderName,
      String cvvCode,
      bool isCvvFocused,
      bool useGlassMorphism,
      bool useBackgroundImage});
}

/// @nodoc
class _$CardStateCopyWithImpl<$Res, $Val extends CardState>
    implements $CardStateCopyWith<$Res> {
  _$CardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardNumber = null,
    Object? expiryDate = null,
    Object? cardHolderName = null,
    Object? cvvCode = null,
    Object? isCvvFocused = null,
    Object? useGlassMorphism = null,
    Object? useBackgroundImage = null,
  }) {
    return _then(_value.copyWith(
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      expiryDate: null == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as String,
      cardHolderName: null == cardHolderName
          ? _value.cardHolderName
          : cardHolderName // ignore: cast_nullable_to_non_nullable
              as String,
      cvvCode: null == cvvCode
          ? _value.cvvCode
          : cvvCode // ignore: cast_nullable_to_non_nullable
              as String,
      isCvvFocused: null == isCvvFocused
          ? _value.isCvvFocused
          : isCvvFocused // ignore: cast_nullable_to_non_nullable
              as bool,
      useGlassMorphism: null == useGlassMorphism
          ? _value.useGlassMorphism
          : useGlassMorphism // ignore: cast_nullable_to_non_nullable
              as bool,
      useBackgroundImage: null == useBackgroundImage
          ? _value.useBackgroundImage
          : useBackgroundImage // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $CardStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String cardNumber,
      String expiryDate,
      String cardHolderName,
      String cvvCode,
      bool isCvvFocused,
      bool useGlassMorphism,
      bool useBackgroundImage});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CardStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardNumber = null,
    Object? expiryDate = null,
    Object? cardHolderName = null,
    Object? cvvCode = null,
    Object? isCvvFocused = null,
    Object? useGlassMorphism = null,
    Object? useBackgroundImage = null,
  }) {
    return _then(_$InitialImpl(
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      expiryDate: null == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as String,
      cardHolderName: null == cardHolderName
          ? _value.cardHolderName
          : cardHolderName // ignore: cast_nullable_to_non_nullable
              as String,
      cvvCode: null == cvvCode
          ? _value.cvvCode
          : cvvCode // ignore: cast_nullable_to_non_nullable
              as String,
      isCvvFocused: null == isCvvFocused
          ? _value.isCvvFocused
          : isCvvFocused // ignore: cast_nullable_to_non_nullable
              as bool,
      useGlassMorphism: null == useGlassMorphism
          ? _value.useGlassMorphism
          : useGlassMorphism // ignore: cast_nullable_to_non_nullable
              as bool,
      useBackgroundImage: null == useBackgroundImage
          ? _value.useBackgroundImage
          : useBackgroundImage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.cardNumber = "",
      this.expiryDate = "",
      this.cardHolderName = "",
      this.cvvCode = "",
      this.isCvvFocused = false,
      this.useGlassMorphism = false,
      this.useBackgroundImage = false});

  @override
  @JsonKey()
  final String cardNumber;
  @override
  @JsonKey()
  final String expiryDate;
  @override
  @JsonKey()
  final String cardHolderName;
  @override
  @JsonKey()
  final String cvvCode;
  @override
  @JsonKey()
  final bool isCvvFocused;
  @override
  @JsonKey()
  final bool useGlassMorphism;
  @override
  @JsonKey()
  final bool useBackgroundImage;

  @override
  String toString() {
    return 'CardState.initial(cardNumber: $cardNumber, expiryDate: $expiryDate, cardHolderName: $cardHolderName, cvvCode: $cvvCode, isCvvFocused: $isCvvFocused, useGlassMorphism: $useGlassMorphism, useBackgroundImage: $useBackgroundImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.cardHolderName, cardHolderName) ||
                other.cardHolderName == cardHolderName) &&
            (identical(other.cvvCode, cvvCode) || other.cvvCode == cvvCode) &&
            (identical(other.isCvvFocused, isCvvFocused) ||
                other.isCvvFocused == isCvvFocused) &&
            (identical(other.useGlassMorphism, useGlassMorphism) ||
                other.useGlassMorphism == useGlassMorphism) &&
            (identical(other.useBackgroundImage, useBackgroundImage) ||
                other.useBackgroundImage == useBackgroundImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      cardNumber,
      expiryDate,
      cardHolderName,
      cvvCode,
      isCvvFocused,
      useGlassMorphism,
      useBackgroundImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String cardNumber,
            String expiryDate,
            String cardHolderName,
            String cvvCode,
            bool isCvvFocused,
            bool useGlassMorphism,
            bool useBackgroundImage)
        initial,
  }) {
    return initial(cardNumber, expiryDate, cardHolderName, cvvCode,
        isCvvFocused, useGlassMorphism, useBackgroundImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String cardNumber,
            String expiryDate,
            String cardHolderName,
            String cvvCode,
            bool isCvvFocused,
            bool useGlassMorphism,
            bool useBackgroundImage)?
        initial,
  }) {
    return initial?.call(cardNumber, expiryDate, cardHolderName, cvvCode,
        isCvvFocused, useGlassMorphism, useBackgroundImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String cardNumber,
            String expiryDate,
            String cardHolderName,
            String cvvCode,
            bool isCvvFocused,
            bool useGlassMorphism,
            bool useBackgroundImage)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(cardNumber, expiryDate, cardHolderName, cvvCode,
          isCvvFocused, useGlassMorphism, useBackgroundImage);
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

abstract class _Initial implements CardState {
  const factory _Initial(
      {final String cardNumber,
      final String expiryDate,
      final String cardHolderName,
      final String cvvCode,
      final bool isCvvFocused,
      final bool useGlassMorphism,
      final bool useBackgroundImage}) = _$InitialImpl;

  @override
  String get cardNumber;
  @override
  String get expiryDate;
  @override
  String get cardHolderName;
  @override
  String get cvvCode;
  @override
  bool get isCvvFocused;
  @override
  bool get useGlassMorphism;
  @override
  bool get useBackgroundImage;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
