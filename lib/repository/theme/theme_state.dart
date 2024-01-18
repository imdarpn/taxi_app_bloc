part of 'theme_bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.initial({required ThemeType themeType , required int group,required bool isDark}) = _Initial;
}
