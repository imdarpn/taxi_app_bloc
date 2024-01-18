part of 'splash_bloc.dart';


@freezed
class SplashState with _$SplashState {
  const factory SplashState.initial({
    @Default(LoadStatus.initial) LoadStatus status,
  }) = _Initial;
}
