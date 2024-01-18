part of 'onboarding_bloc.dart';

@freezed
class OnboardingEvent with _$OnboardingEvent {
  const factory OnboardingEvent.initOnboardingEvent() = _InitOnboardingEvent;

  const factory OnboardingEvent.pageChangeEvent({
    required int pageIndex,
  }) = _PageChangeEvent;
}
