part of 'localization_bloc.dart';

@freezed
class LocalizationState with _$LocalizationState {
  const factory LocalizationState.initial({
    @Default(Locale("en","US")) Locale locale,
    @Default("en-US" ) String langCode,
  }) = _Initial;
}
