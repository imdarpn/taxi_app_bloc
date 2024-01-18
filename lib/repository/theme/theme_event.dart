part of 'theme_bloc.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.started() = _Started;
  const factory ThemeEvent.themeChange() = _ThemeChange;
  const factory ThemeEvent.themeListener({required Brightness brightness}) = _ThemeListener;
  const factory ThemeEvent.radioChange({required int index}) = _RadioChange;

}
