part of 'localization_bloc.dart';

@freezed
class LocalizationEvent with _$LocalizationEvent {
  const factory LocalizationEvent.changeLocale() = _ChangeLocale;
  const factory LocalizationEvent.getLocale() = _GetLocale;
  const factory LocalizationEvent.radioChange({required String value}) = _RadioChange;
}
