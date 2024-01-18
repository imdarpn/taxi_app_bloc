part of 'onboarding_bloc.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState.initial({
    @Default([]) List<OnboardingModel> onboardingModelList,
    @Default(0) int currentPageIndex,
  }) = _Initial;

  const factory OnboardingState.loadedList({
    required List<OnboardingModel> onboardingModelList,
    required int currentPageIndex,
  }) = _LoadedList;
}
